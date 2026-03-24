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
echo  🔥 FIREBASE DEPLOYMENT - PROFESSIONAL HOSTING 🔥
echo.
echo  Your app will get:
echo  ✅ Free worldwide hosting (firebase.app domain)
echo  ✅ HTTPS enabled automatically
echo  ✅ Global CDN for fast loading
echo  ✅ Custom domain support
echo  ✅ Real-time database integration
echo  ✅ Works on ANY device without your PC
echo.

echo 📦 Step 1: Building optimized Flutter web app...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons --release

if %errorlevel% neq 0 (
    echo ❌ Build failed! Check for errors above.
    pause
    exit /b 1
)

echo ✅ Build successful!
echo.

echo 🔧 Step 2: Installing Firebase CLI...
npm install -g firebase-tools

if %errorlevel% neq 0 (
    echo ❌ Firebase CLI installation failed!
    echo 💡 Make sure Node.js is installed: https://nodejs.org
    pause
    exit /b 1
)

echo ✅ Firebase CLI installed!
echo.

echo 🔐 Step 3: Firebase Authentication...
echo.
echo 🌐 Opening Firebase Console...
start https://console.firebase.google.com

echo.
echo 📋 FIREBASE SETUP INSTRUCTIONS:
echo.
echo 1️⃣  Login to Firebase (Google account required)
echo 2️⃣  Click "Create a project" or "Add project"
echo 3️⃣  Project name: micro-community-app
echo 4️⃣  Disable Google Analytics (optional)
echo 5️⃣  Click "Create project"
echo 6️⃣  Wait for project creation
echo.
echo ⏳ Complete the above steps, then press any key to continue...
pause

echo.
echo 🔑 Step 4: Firebase Login...
firebase login

if %errorlevel% neq 0 (
    echo ❌ Firebase login failed!
    echo 💡 Make sure you completed the Firebase Console setup
    pause
    exit /b 1
)

echo ✅ Firebase login successful!
echo.

echo 🏗️ Step 5: Initialize Firebase Hosting...
firebase init hosting

echo.
echo 📋 FIREBASE INIT PROMPTS - CHOOSE THESE OPTIONS:
echo.
echo ❓ "Select a default Firebase project" → Choose your project
echo ❓ "What do you want to use as your public directory?" → build/web
echo ❓ "Configure as a single-page app?" → Yes (y)
echo ❓ "Set up automatic builds and deploys with GitHub?" → No (n)
echo ❓ "File build/web/index.html already exists. Overwrite?" → No (n)
echo.

echo 🚀 Step 6: Deploy to Firebase...
firebase deploy

if %errorlevel% neq 0 (
    echo ❌ Deployment failed!
    echo 💡 Check the error messages above
    pause
    exit /b 1
)

echo.
echo 🎉 DEPLOYMENT SUCCESSFUL! 🎉
echo.
echo 🌍 Your app is now live worldwide at:
echo    https://micro-community-app.web.app
echo    (or your custom project URL)
echo.
echo 📱 MOBILE INSTALLATION:
echo    1. Open the URL on any phone
echo    2. Tap browser menu → "Add to Home Screen"
echo    3. App installs like native app
echo    4. Works offline with local storage
echo.
echo 🔧 MANAGEMENT:
echo    • Firebase Console: https://console.firebase.google.com
echo    • Update app: Run this script again
echo    • Custom domain: Configure in Firebase Console
echo.
echo ✅ Your Micro Community app is now accessible worldwide!
echo.
pause