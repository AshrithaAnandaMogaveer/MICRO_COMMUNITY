@echo off
echo 🚀 Building Micro Community Mobile App...
echo.

REM Set Flutter path
set FLUTTER_PATH=C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat

echo 📱 Step 1: Adding mobile platforms...
%FLUTTER_PATH% config --enable-android
%FLUTTER_PATH% config --enable-ios

echo 📦 Step 2: Getting dependencies...
%FLUTTER_PATH% pub get

echo 🔧 Step 3: Building Android APK...
%FLUTTER_PATH% build apk --release

echo 📱 Step 4: Building Android App Bundle (for Play Store)...
%FLUTTER_PATH% build appbundle --release

echo ✅ Build complete!
echo.
echo 📁 Your mobile app files are ready:
echo    - APK: build\app\outputs\flutter-apk\app-release.apk
echo    - App Bundle: build\app\outputs\bundle\release\app-release.aab
echo.
echo 📲 To install on Android device:
echo    1. Enable "Unknown Sources" in Android settings
echo    2. Copy app-release.apk to your phone
echo    3. Tap the APK file to install
echo.
echo 🏪 To publish on Google Play Store:
echo    - Use the app-release.aab file
echo.
pause