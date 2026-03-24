@echo off
color 0A
echo.
echo  ███╗   ██╗██╗   ██╗███╗   ███╗    ██╗   ██╗██████╗  ██████╗ ██████╗  █████╗ ██████╗ ███████╗
echo  ████╗  ██║██║   ██║████╗ ████║    ██║   ██║██╔══██╗██╔════╝ ██╔══██╗██╔══██╗██╔══██╗██╔════╝
echo  ██╔██╗ ██║██║   ██║██╔████╔██║    ██║   ██║██████╔╝██║  ███╗██████╔╝███████║██║  ██║█████╗  
echo  ██║╚██╗██║╚██╗ ██╔╝██║╚██╔╝██║    ██║   ██║██╔═══╝ ██║   ██║██╔══██╗██╔══██║██║  ██║██╔══╝  
echo  ██║ ╚████║ ╚████╔╝ ██║ ╚═╝ ██║    ╚██████╔╝██║     ╚██████╔╝██║  ██║██║  ██║██████╔╝███████╗
echo  ╚═╝  ╚═══╝  ╚═══╝  ╚═╝     ╚═╝     ╚═════╝ ╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝
echo.
echo  🚀 NVM UPGRADE + FIREBASE DEPLOYMENT 🚀
echo.

echo 📊 Current Node.js setup:
echo.
echo Current version:
node --version
echo.
echo Available NVM versions:
nvm list

echo.
echo 🔄 Step 1: Installing Node.js 20 LTS via NVM...
echo.
echo 📥 Installing Node.js 20 (LTS)...
nvm install 20

if %errorlevel% neq 0 (
    echo ❌ NVM install failed!
    echo.
    echo 💡 Trying alternative versions...
    echo 📥 Installing Node.js 22 (Latest LTS)...
    nvm install 22
    
    if %errorlevel% neq 0 (
        echo ❌ NVM install failed for both versions!
        echo.
        echo 💡 Manual solutions:
        echo    1. nvm install latest
        echo    2. nvm install lts
        echo    3. Check internet connection
        pause
        exit /b 1
    )
    
    echo ✅ Node.js 22 installed!
    echo 🔄 Switching to Node.js 22...
    nvm use 22
) else (
    echo ✅ Node.js 20 installed!
    echo 🔄 Switching to Node.js 20...
    nvm use 20
)

if %errorlevel% neq 0 (
    echo ❌ Failed to switch Node.js version!
    echo.
    echo 💡 Try manually:
    echo    1. nvm list (see available versions)
    echo    2. nvm use [version] (e.g., nvm use 20.10.0)
    pause
    exit /b 1
)

echo.
echo ✅ Node.js upgraded successfully!
echo.
echo 📊 New Node.js version:
node --version
npm --version

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

echo 🔧 Step 3: Installing Firebase CLI...
npm install -g firebase-tools@latest

if %errorlevel% neq 0 (
    echo ❌ Firebase CLI installation failed!
    echo.
    echo 💡 Solutions:
    echo    1. Run as Administrator
    echo    2. Try: npm install -g firebase-tools --force
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
echo 🔥 In Firebase Console (just opened):
echo.
echo 1️⃣  Click "Create a project"
echo 2️⃣  Project name: micro-community-app
echo 3️⃣  Disable Google Analytics (optional)
echo 4️⃣  Click "Create project"
echo 5️⃣  Wait for project creation
echo.
echo ⏳ After creating the Firebase project, press any key to continue...
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
echo 📋 FIREBASE INIT ANSWERS:
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
echo 🎉🎉🎉 SUCCESS! FIREBASE DEPLOYMENT COMPLETE! 🎉🎉🎉
echo.
echo 🌍 Your Micro Community app is now LIVE WORLDWIDE!
echo.
echo 📱 ACCESS YOUR APP:
echo    🔗 https://micro-community-app.web.app
echo    🔗 https://micro-community-app.firebaseapp.com
echo.
echo 📲 MOBILE INSTALLATION:
echo    1. Open URL on any phone
echo    2. Tap "Add to Home Screen"
echo    3. App installs like native app
echo    4. Works offline with local storage
echo.
echo 🔧 MANAGEMENT:
echo    • Update: firebase deploy
echo    • Console: https://console.firebase.google.com
echo.
echo ✅ Your app now works on ANY device without your PC!
echo.
pause