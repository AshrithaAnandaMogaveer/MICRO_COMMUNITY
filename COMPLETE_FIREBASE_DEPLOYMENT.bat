@echo off
color 0C
echo.
echo  ███████╗██╗██████╗ ███████╗██████╗  █████╗ ███████╗███████╗
echo  ██╔════╝██║██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝
echo  █████╗  ██║██████╔╝█████╗  ██████╔╝███████║███████╗█████╗  
echo  ██╔══╝  ██║██╔══██╗██╔══╝  ██╔══██╗██╔══██║╚════██║██╔══╝  
echo  ██║     ██║██║  ██║███████╗██████╔╝██║  ██║███████║███████╗
echo  ╚═╝     ╚═╝╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝
echo.
echo  🔥 COMPLETE FIREBASE DEPLOYMENT SOLUTION 🔥
echo.

echo 📊 Checking Node.js version...
node --version

echo.
echo 🎯 Checking if Node.js is compatible with Firebase CLI...
for /f "tokens=1 delims=v" %%i in ('node --version') do set NODE_VERSION=%%i
for /f "tokens=1 delims=." %%i in ("%NODE_VERSION%") do set MAJOR_VERSION=%%i

if %MAJOR_VERSION% LSS 20 (
    echo ❌ Node.js version is too old for Firebase CLI
    echo 📥 Current: v%NODE_VERSION%
    echo 🎯 Required: v20.0.0 or higher
    echo.
    echo 🔄 UPGRADE NODE.JS FIRST:
    echo.
    echo 1️⃣  Download from: https://nodejs.org
    echo 2️⃣  Install LTS version (v20.x or v22.x)
    echo 3️⃣  Restart terminal
    echo 4️⃣  Run this script again
    echo.
    start https://nodejs.org
    pause
    exit /b 1
)

echo ✅ Node.js version is compatible!
echo.

echo 📦 Step 1: Building Flutter web app for production...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons --release

if %errorlevel% neq 0 (
    echo ❌ Flutter build failed!
    echo.
    echo 💡 Troubleshooting:
    echo    1. Check for errors above
    echo    2. Run: flutter clean
    echo    3. Run: flutter pub get
    echo    4. Try building again
    pause
    exit /b 1
)

echo ✅ Flutter build successful!
echo.

echo 🔧 Step 2: Installing/Updating Firebase CLI...
npm install -g firebase-tools@latest

if %errorlevel% neq 0 (
    echo ❌ Firebase CLI installation failed!
    echo.
    echo 💡 Solutions:
    echo    1. Run PowerShell as Administrator
    echo    2. Or try: npm install -g firebase-tools --force
    echo    3. Check internet connection
    pause
    exit /b 1
)

echo ✅ Firebase CLI installed successfully!
echo.

echo 🌐 Step 3: Opening Firebase Console for project setup...
start https://console.firebase.google.com

echo.
echo 📋 FIREBASE PROJECT CREATION:
echo.
echo 🔥 In the Firebase Console (just opened):
echo.
echo 1️⃣  Click "Create a project" (or "Add project")
echo 2️⃣  Project name: micro-community-app
echo 3️⃣  Continue → Disable Google Analytics (optional)
echo 4️⃣  Click "Create project"
echo 5️⃣  Wait for project creation (30 seconds)
echo 6️⃣  Click "Continue" to project dashboard
echo.
echo ⏳ Complete the above steps, then press any key to continue...
pause

echo.
echo 🔑 Step 4: Firebase Authentication...
firebase login

if %errorlevel% neq 0 (
    echo ❌ Firebase login failed!
    echo.
    echo 💡 Solutions:
    echo    1. Make sure you have a Google account
    echo    2. Allow browser popup for authentication
    echo    3. Try: firebase login --reauth
    pause
    exit /b 1
)

echo ✅ Firebase login successful!
echo.

echo 🏗️ Step 5: Initialize Firebase Hosting...
echo.
echo 📋 FIREBASE INIT PROMPTS - ANSWER THESE:
echo.
echo ❓ "Which Firebase features do you want to set up?"
echo    → Use SPACEBAR to select "Hosting", then ENTER
echo.
echo ❓ "Please select an option:"
echo    → "Use an existing project"
echo.
echo ❓ "Select a default Firebase project for this directory:"
echo    → Choose "micro-community-app"
echo.
echo ❓ "What do you want to use as your public directory?"
echo    → Type: build/web
echo.
echo ❓ "Configure as a single-page app (rewrite all urls to /index.html)?"
echo    → Type: y (Yes)
echo.
echo ❓ "Set up automatic builds and deploys with GitHub?"
echo    → Type: n (No)
echo.
echo ❓ "File build/web/index.html already exists. Overwrite?"
echo    → Type: n (No)
echo.

firebase init hosting

if %errorlevel% neq 0 (
    echo ❌ Firebase initialization failed!
    echo.
    echo 💡 Solutions:
    echo    1. Make sure you created the Firebase project
    echo    2. Check project name: micro-community-app
    echo    3. Try: firebase use --add
    pause
    exit /b 1
)

echo ✅ Firebase hosting initialized!
echo.

echo 🚀 Step 6: Deploying to Firebase...
echo.
echo 📤 Uploading your Micro Community app to Firebase...
firebase deploy

if %errorlevel% neq 0 (
    echo ❌ Deployment failed!
    echo.
    echo 💡 Troubleshooting:
    echo    1. firebase use --add
    echo    2. firebase deploy --only hosting
    echo    3. Check Firebase Console for project status
    echo    4. Verify build/web folder exists
    pause
    exit /b 1
)

echo.
echo 🎉🎉🎉 DEPLOYMENT SUCCESSFUL! 🎉🎉🎉
echo.
echo 🌍 Your Micro Community app is now LIVE WORLDWIDE!
echo.
echo 📱 ACCESS YOUR APP:
echo    🔗 Primary URL: https://micro-community-app.web.app
echo    🔗 Backup URL:  https://micro-community-app.firebaseapp.com
echo.
echo 📲 MOBILE INSTALLATION (Any Phone):
echo    1️⃣  Open the URL on any smartphone
echo    2️⃣  Tap browser menu (⋮ or share button)
echo    3️⃣  Select "Add to Home Screen" or "Install App"
echo    4️⃣  App appears on home screen like native app
echo    5️⃣  Works offline with local storage
echo.
echo 🔧 MANAGEMENT & UPDATES:
echo    • Firebase Console: https://console.firebase.google.com
echo    • Update app: Run 'firebase deploy' or this script
echo    • Custom domain: Configure in Firebase Console
echo    • Analytics: Enable in Firebase Console
echo.
echo ✅ FEATURES ENABLED:
echo    🌍 Worldwide hosting (Google's global CDN)
echo    🔒 HTTPS security (SSL certificate included)
echo    📱 Progressive Web App (PWA) installation
echo    ⚡ Fast loading (cached globally)
echo    💾 Offline functionality with local storage
echo    🔄 Real-time data synchronization
echo    🆓 Free hosting (Firebase free tier: 10GB/month)
echo    🎯 Custom domain support
echo    📊 Analytics ready (optional)
echo.
echo 🎯 YOUR APP NOW WORKS:
echo    ✅ On ANY Android phone (installable)
echo    ✅ On ANY iPhone (installable)
echo    ✅ On ANY computer worldwide
echo    ✅ WITHOUT your PC running
echo    ✅ With offline local storage
echo    ✅ With real-time cloud sync
echo.
echo 🚀 CONGRATULATIONS! Your Micro Community app is deployed!
echo.
pause