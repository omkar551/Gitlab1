@echo off
setlocal
echo ==========================================================
echo    DevPulse - GitHub Repository Push Helper
echo ==========================================================
echo.

set GIT_PATH=C:\Users\omkar\.gemini\antigravity\scratch\git\cmd\git.exe
if not exist "%GIT_PATH%" (
    set GIT_PATH=git
)

set REPO_URL=%1
if "%REPO_URL%"=="" (
    set /p REPO_URL="Enter your GitHub Repository URL (e.g., https://github.com/username/my-repo.git): "
)

if "%REPO_URL%"=="" (
    echo [ERROR] No GitHub URL provided. Aborting.
    pause
    exit /b 1
)

echo.
echo [1/3] Adding remote origin...
"%GIT_PATH%" remote remove origin 2>nul
"%GIT_PATH%" remote add origin %REPO_URL%

echo [2/3] Renaming current branch to main...
"%GIT_PATH%" branch -M main

echo [3/3] Pushing all 4+ commits to GitHub...
"%GIT_PATH%" push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ==========================================================
    echo [SUCCESS] Your repository has been pushed to GitHub!
    echo Copy your GitHub repository URL and paste it in the Google Sheet.
    echo ==========================================================
) else (
    echo.
    echo [NOTE] If push was rejected, check that your GitHub repository
    echo        is empty (without a pre-created README/license) or run:
    echo        "%GIT_PATH%" push -u origin main --force
)

pause
