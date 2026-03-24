@echo off
echo 🔥 FIREBASE QUICK SETUP - MICRO COMMUNITY
echo.
echo This will set up Firebase hosting in 5 minutes!
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js not found!
    echo.
    echo 📥 Please install Node.js first:
    echo    1. Go to: https://nodejs.org
    echo    2. Download LTS version
    echo    3. Install and restart this script
    echo.
    start https://nodejs.org
    pause
    exit /b 1
)

echo ✅ Node.js found!
echo.

echo 📦 Building Flutter web app...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons --release

echo.
echo 🔧 Installing Firebase CLI...
npm install -g firebase-tools

echo.
echo 🌐 Opening Firebase Console for project setup...
start https://console.firebase.google.com

echo.
echo 📋 QUICK FIREBASE PROJECT SETUP:
echo.
echo 1️⃣  In the opened Firebase Console:
echo    • Click "Create a project"
echo    • Name: micro-community-app
echo    • Disable Analytics (optional)
echo    • Click "Create project"
echo.
echo 2️⃣  After project creation, come back here and press any key...
pause

echo.
echo 🔑 Logging into Firebase...
firebase login

echo.
echo 🏗️ Initializing Firebase in your project...
firebase init

echo.
echo 📋 FIREBASE INIT ANSWERS:
echo.
echo ❓ "Which Firebase features?" → Hosting (use spacebar to select)
echo ❓ "Select a default Firebase project" → micro-community-app
echo ❓ "What do you want to use as your public directory?" → build/web
echo ❓ "Configure as a single-page app?" → y (Yes)
echo ❓ "Set up automatic builds and deploys?" → n (No)
echo ❓ "Overwrite index.html?" → n (No)
echo.

echo 🚀 Deploying to Firebase...
firebase deploy

echo.
echo 🎉 FIREBASE DEPLOYMENT COMPLETE!
echo.
echo 🌍 Your app is live at: https://micro-community-app.web.app
echo 📱 Works on ANY device worldwide!
echo 🔄 Updates: Run 'firebase deploy' to update
echo.
pause