@echo off
chcp 65001 >nul
rem 雙擊執行：啟用 commit 前金鑰檢查（rule-security.md 第六節）
rem Git 可能裝在任何位置：從 git.exe 所在處（...\Git\cmd\）往上找 bin\bash.exe
set "GITBASH="
for /f "delims=" %%G in ('where git 2^>nul') do if not defined GITBASH if exist "%%~dpG..\bin\bash.exe" set "GITBASH=%%~dpG..\bin\bash.exe"
if not defined GITBASH if exist "%ProgramFiles%\Git\bin\bash.exe" set "GITBASH=%ProgramFiles%\Git\bin\bash.exe"
if not defined GITBASH (
  echo [失敗] 找不到 Git for Windows，請先安裝：winget install --id Git.Git -e
  pause
  exit /b 1
)
"%GITBASH%" "%~dp0setup.sh"
set "RC=%ERRORLEVEL%"
pause
exit /b %RC%
