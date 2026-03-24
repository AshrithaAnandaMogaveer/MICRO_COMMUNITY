@echo off
echo 📱 Building Android APK for Micro Community...
echo.
echo ⏳ This may take 3-5 minutes for the first build...
echo.

REM Set Flutter path
set FLUTTER_PATH=C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat

echo 🔧 Building APK...
%FLUTTER_PATH% build apk --release --verbose

echo.
if exist "build\app\outputs\flutter-apk\app-release.apk" (
    echo ✅ SUCCESS! APK built successfully!
    echo.
    echo 📁 Your APK is ready at:
    echo    build\app\outputs\flutter-apk\app-release.apk
    echo.
    echo 📲 To install on Android:
    echo    1. Copy APK to your phone
    echo    2. Enable "Unknown Sources" in settings
    echo    3. Tap APK file to install
    echo.
) else (
    echo ❌ Build failed. Check the output above for errors.
    echo.
    echo 🔧 Try these solutions:
    echo    1. Run: flutter clean
    echo    2. Run: flutter pub get
    echo    3. Try building again
    echo.
)

pause