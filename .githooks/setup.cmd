@echo off
chcp 65001 >nul
rem 雙擊執行：啟用 commit 前金鑰檢查（rule-security.md 第六節）
set "GITBASH=%ProgramFiles%\Git\bin\bash.exe"
if not exist "%GITBASH%" (
  echo [失敗] 找不到 Git for Windows，請先安裝：winget install --id Git.Git -e
  pause
  exit /b 1
)
"%GITBASH%" "%~dp0setup.sh"
set "RC=%ERRORLEVEL%"
pause
exit /b %RC%
