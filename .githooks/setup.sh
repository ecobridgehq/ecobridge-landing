#!/bin/sh
# 由 setup.cmd 呼叫：啟用 commit 前金鑰檢查，並實際試擋一次（rule-security.md 第六節）
here="$(cd "$(dirname "$0")" && pwd)"
root="$(dirname "$here")"
PATH="$PATH:$LOCALAPPDATA/Microsoft/WinGet/Links:/c/Users/$USERNAME/AppData/Local/Microsoft/WinGet/Links"
fail=0

echo "== 1. 檢查 gitleaks"
if ! command -v gitleaks >/dev/null 2>&1; then
  echo "   沒裝，自動安裝中（約 1 分鐘）..."
  if command -v winget.exe >/dev/null 2>&1; then
    winget.exe install --id Gitleaks.Gitleaks -e --accept-source-agreements --accept-package-agreements >/dev/null 2>&1
  else
    echo "   這台電腦沒有 winget（Windows 內建的「應用程式安裝程式」），請到 Microsoft Store 安裝後再雙擊一次。"
  fi
fi
if command -v gitleaks >/dev/null 2>&1; then
  echo "   [成功] gitleaks $(gitleaks version)"
else
  echo "   [失敗] gitleaks 安裝失敗，請手動執行：winget install --id Gitleaks.Gitleaks -e"
  exit 1
fi

echo "== 2. 啟用各 repo 的檢查"
for d in "$root" "$root"/repos/*/; do
  [ -d "$d" ] || continue
  if [ "$d" = "$root" ]; then name="$(basename "$root")（hub）"; else name="${d#"$root"/}"; name="${name%/}"; fi
  if [ ! -d "$d/.git" ]; then
    echo "   [略過] $name 尚未 git init（init 或 clone 後請再雙擊一次 setup.cmd）"
  elif [ ! -f "$d/.githooks/pre-commit" ]; then
    echo "   [失敗] $name 缺少 .githooks/pre-commit"; fail=1
  else
    git -C "$d" config core.hooksPath .githooks
    if [ "$(git -C "$d" config core.hooksPath)" = ".githooks" ]; then
      echo "   [成功] $name"
    else
      echo "   [失敗] $name 設定沒寫進去"; fail=1
    fi
  fi
done

echo "== 3. 實際試擋（在暫存資料夾，不影響真實 repo）"
t="$(mktemp -d)"
git init -q "$t" && cd "$t" || exit 1
git config core.autocrlf false; git config core.hooksPath "$here"; git config user.email test@local; git config user.name test
try() { # $1=說明 $2=預期(block|pass)
  if git commit -q -m test >/dev/null 2>&1; then got=pass; else got=block; fi
  if [ "$got" = "$2" ]; then echo "   [成功] $1"; else echo "   [失敗] $1"; fail=1; fi
  git reset -q --hard 2>/dev/null; git clean -qfdx
}
echo X=1 > .env.local; git add -f .env.local; try "擋下 .env 檔" block
echo "token = \"ghp_$(head -c 300 /dev/urandom | tr -dc 'A-Za-z0-9' | head -c 36)\"" > a.txt; git add a.txt; try "擋下假金鑰" block
echo x > "金鑰.PEM"; git add -f "金鑰.PEM"; try "擋下中文＋大寫檔名" block
echo ok > ok.txt; git add ok.txt; try "放行乾淨檔案" pass
cd /; rm -rf "$t"

echo
if [ $fail -eq 0 ]; then echo "[成功] 保護已啟用"; else echo "[失敗] 有項目沒通過，請把上面畫面截圖給 Claude"; fi
exit $fail
