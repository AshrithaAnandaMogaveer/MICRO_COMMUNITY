@echo off
echo Creating mobile platforms for Flutter app...
echo.

REM Add Android platform
echo Adding Android platform...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat config --enable-android
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat create --platforms android .

REM Add iOS platform  
echo Adding iOS platform...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat config --enable-ios
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat create --platforms ios .

echo.
echo Mobile platforms created successfully!
echo You can now build for:
echo - Android: flutter build apk
echo - iOS: flutter build ios
echo.
pause