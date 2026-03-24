@echo off
echo 📱 Running Micro Community on Mobile Device...
echo.

REM Set Flutter path
set FLUTTER_PATH=C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat

echo 🔍 Checking connected devices...
%FLUTTER_PATH% devices

echo.
echo 📱 Starting app on connected device...
echo    (Make sure your Android device is connected via USB with USB Debugging enabled)
echo    (Or iOS device is connected and trusted)
echo.

%FLUTTER_PATH% run

pause