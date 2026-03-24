@echo off
echo 🔥 COMPLETE FIREBASE SETUP - MICRO COMMUNITY
echo.
echo ✅ Prerequisites completed:
echo    - Flutter web app built
echo    - Firebase CLI installed
echo    - Firebase Console opened
echo.
echo 📋 NEXT: Complete these steps in Firebase Console:
echo.
echo 1️⃣  Create project named: micro-community-app
echo 2️⃣  Disable Analytics (optional)
echo 3️⃣  Click "Create project"
echo 4️⃣  Wait for project creation
echo.
echo ⏳ After creating the Firebase project, press any key to continue...
pause

echo.
echo 🔑 Step 1: Firebase Login...
firebase login

if %errorlevel% neq 0 (
    echo ❌ Login failed! Please try again.
    pause
    exit /b 1
)

echo.
echo 🏗️ Step 2: Initialize Firebase Hosting...
echo.
echo 📋 IMPORTANT: Choose these options when prompted:
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

echo.
echo 🚀 Step 3: Deploy to Firebase...
firebase deploy

if %errorlevel% neq 0 (
    echo ❌ Deployment failed!
    echo.
    echo 💡 Try these solutions:
    echo    1. firebase use --add
    echo    2. firebase deploy --only hosting
    echo    3. Check Firebase Console for project status
    pause
    exit /b 1
)

echo.
echo 🎉 SUCCESS! FIREBASE DEPLOYMENT COMPLETE! 🎉
echo.
echo 🌍 Your Micro Community app is now live worldwide!
echo.
echo 📱 ACCESS YOUR APP:
echo    • Web: https://micro-community-app.web.app
echo    • Alt: https://micro-community-app.firebaseapp.com
echo.
echo 📲 MOBILE INSTALLATION:
echo    1. Open the URL on any phone
echo    2. Browser menu → "Add to Home Screen"
echo    3. App installs like native app
echo    4. Works offline with local storage
echo.
echo 🔧 FUTURE UPDATES:
echo    • Run: firebase deploy
echo    • Or use: .\complete_firebase_setup.bat
echo.
echo ✅ Your app now works on ANY device without your PC running!
echo.
pause