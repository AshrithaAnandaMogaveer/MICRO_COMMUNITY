@echo off
echo 🚀 NVM QUICK UPGRADE - Node.js 20+
echo.

echo 📊 Current Node.js version:
node --version

echo.
echo 📋 Available NVM versions:
nvm list

echo.
echo 🔄 Installing and switching to Node.js 20 LTS...
echo.

REM Install Node.js 20 LTS
nvm install 20

if %errorlevel% neq 0 (
    echo ❌ Node.js 20 install failed, trying latest LTS...
    nvm install lts
    
    if %errorlevel% neq 0 (
        echo ❌ LTS install failed, trying latest...
        nvm install latest
    )
)

echo.
echo 🔄 Switching to the latest installed version...

REM Try to use Node.js 20 first
nvm use 20

if %errorlevel% neq 0 (
    echo ⚠️ Node.js 20 not available, trying other versions...
    
    REM Get the latest version and use it
    for /f "tokens=*" %%i in ('nvm list') do (
        echo Trying version: %%i
        nvm use %%i
        if not errorlevel 1 goto success
    )
    
    echo ❌ Failed to switch to any Node.js version!
    pause
    exit /b 1
)

:success
echo.
echo ✅ Node.js upgrade successful!
echo.
echo 📊 New versions:
node --version
npm --version

echo.
echo 🎯 Node.js is now ready for Firebase CLI!
echo.
echo 🚀 Next step: Run the complete deployment
echo    .\COMPLETE_FIREBASE_DEPLOYMENT.bat
echo.
pause