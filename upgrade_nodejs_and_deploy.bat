@echo off
color 0A
echo.
echo  ███╗   ██╗ ██████╗ ██████╗ ███████╗    ██╗███████╗
echo  ████╗  ██║██╔═══██╗██╔══██╗██╔════╝    ██║██╔════╝
echo  ██╔██╗ ██║██║   ██║██║  ██║█████╗      ██║███████╗
echo  ██║╚██╗██║██║   ██║██║  ██║██╔══╝ ██   ██║╚════██║
echo  ██║ ╚████║╚██████╔╝██████╔╝███████╗╚█████╔╝███████║
echo  ╚═╝  ╚═══╝ ╚═════╝ ╚═════╝ ╚══════╝ ╚════╝ ╚══════╝
echo.
echo  🚀 NODE.JS UPGRADE + FIREBASE DEPLOYMENT 🚀
echo.

echo 📊 Current Node.js version:
node --version

echo.
echo 🔄 Step 1: Upgrading Node.js to latest LTS...
echo.
echo 📥 Downloading Node.js LTS (v20.x)...
echo    Opening Node.js download page...

start https://nodejs.org/en/download/

echo.
echo 📋 NODE.JS UPGRADE INSTRUCTIONS:
echo.
echo 1️⃣  In the opened browser:
echo    • Download "Windows Installer (.msi)" - LTS version
echo    • Choose 64-bit for most systems
echo.
echo 2️⃣  Run the downloaded installer:
echo    • Accept all defaults
echo    • Click "Next" → "Next" → "Install"
echo    • Wait for installation to complete
echo.
echo 3️⃣  Restart this script after installation
echo.
echo ⏳ After installing Node.js, press any key to continue...
pause

echo.
echo 🔍 Checking new Node.js version...
node --version

echo.
echo 📦 Step 2: Building Flutter web app...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons --release

if %errorlevel% neq 0 (
    echo ❌ Flutter build failed!
    pause
    exit /b 1
)

echo ✅ Flutter build successful!
echo.

echo 🔧 Step 3: Installing/Updating Firebase CLI...
npm install -g firebase-tools@latest

if %errorlevel% neq 0 (
    echo ❌ Firebase CLI installation failed!
    echo 💡 Try running as administrator
    pause
    exit /b 1
)

echo ✅ Firebase CLI installed!
echo.

echo 🌐 Step 4: Opening Firebase Console...
start https://console.firebase.google.com

echo.
echo 📋 FIREBASE PROJECT SETUP:
echo.
echo 1️⃣  In Firebase Console (opened):
echo    • Click "Create a project"
echo    • Project name: micro-community-app
echo    • Disable Google Analytics (optional)
echo    • Click "Create project"
echo    • Wait for project creation
echo.
echo ⏳ After creating Firebase project, press any key to continue...
pause

echo.
echo 🔑 Step 5: Firebase Login...
firebase login

if %errorlevel% neq 0 (
    echo ❌ Firebase login failed!
    pause
    exit /b 1
)

echo ✅ Firebase login successful!
echo.

echo 🏗️ Step 6: Initialize Firebase Hosting...
echo.
echo 📋 FIREBASE INIT PROMPTS - CHOOSE THESE:
echo    • Features: Hosting (spacebar to select)
echo    • Project: micro-community-app
echo    • Public directory: build/web
echo    • Single-page app: y (Yes)
echo    • GitHub deploys: n (No)
echo    • Overwrite index.html: n (No)
echo.

firebase init hosting

if %errorlevel% neq 0 (
    echo ❌ Firebase init failed!
    pause
    exit /b 1
)

echo ✅ Firebase initialized!
echo.

echo 🚀 Step 7: Deploy to Firebase...
firebase deploy

if %errorlevel% neq 0 (
    echo ❌ Deployment failed!
    echo.
    echo 💡 Troubleshooting:
    echo    1. firebase use --add
    echo    2. firebase deploy --only hosting
    pause
    exit /b 1
)

echo.
echo 🎉 SUCCESS! FIREBASE DEPLOYMENT COMPLETE! 🎉
echo.
echo 🌍 Your Micro Community app is now live worldwide!
echo.
echo 📱 ACCESS YOUR APP:
echo    • https://micro-community-app.web.app
echo    • https://micro-community-app.firebaseapp.com
echo.
echo 📲 MOBILE INSTALLATION:
echo    1. Open the URL on any phone
echo    2. Browser menu → "Add to Home Screen"
echo    3. App installs like native app
echo    4. Works offline with local storage
echo.
echo 🔧 FUTURE UPDATES:
echo    • Run: firebase deploy
echo    • Or run this script again
echo.
echo ✅ Your app now works on ANY device without your PC!
echo.
echo 🎯 FEATURES ENABLED:
echo    ✅ Worldwide hosting (Google CDN)
echo    ✅ HTTPS security
echo    ✅ Mobile PWA installation
echo    ✅ Offline functionality
echo    ✅ Real-time data sync
echo    ✅ Custom domain support
echo    ✅ Free hosting (Firebase free tier)
echo.
pause