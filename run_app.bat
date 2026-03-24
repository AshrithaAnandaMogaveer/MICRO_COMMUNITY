@echo off
echo ========================================
echo   MICRO COMMUNITY - INSTANT RESPONSE
echo ========================================
echo.
echo Starting Micro Community App on http://localhost:8080
echo.
echo ✅ NO MORE BUFFERING - All functions are instant!
echo ✅ Data will persist at this URL!
echo ✅ Bookmark: http://localhost:8080
echo.

REM Try different Flutter paths
if exist "C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat" (
    echo Using local Flutter SDK...
    C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat run -d chrome --web-port=8080 --web-hostname=localhost
) else if exist "C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.exe" (
    echo Using local Flutter SDK (exe)...
    C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.exe run -d chrome --web-port=8080 --web-hostname=localhost
) else if exist "flutter.exe" (
    echo Using system Flutter...
    flutter run -d chrome --web-port=8080 --web-hostname=localhost
) else (
    echo Flutter not found! Please check the path.
    echo.
    echo Expected paths:
    echo - C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat
    echo - C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.exe
    echo.
    echo Manual run instructions:
    echo 1. Open Command Prompt (cmd)
    echo 2. Navigate to this folder
    echo 3. Run: flutter run -d chrome --web-port=8080
)
pause
