@echo off
echo ========================================
echo   MICRO COMMUNITY - LOCAL FIRST MODE
echo ========================================
echo.
echo Starting Flutter app with LOCAL-FIRST approach...
echo - Instant response from local storage
echo - Background cloud sync for real-time updates
echo - No buffering or loading delays
echo.
echo Port: 8080 (for data persistence)
echo.

REM Try different Flutter paths
echo Searching for Flutter

REM Check local project Flutter (correct path)
if exist "C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat" (
    echo ✅ Found local Flutter SDK at C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat
    echo.
    echo 🚀 Starting app with LOCAL-FIRST approach...
    echo Please wait while Flutter compiles (this may take 1-2 minutes)
    echo App will open at: http://localhost:8080
    echo.
    echo NO MORE BUFFERING - All functions will be INSTANT!
    echo.
    C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat run -d chrome --web-port=8080
    goto :end
)

if exist "C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.exe" (
    echo ✅ Found local Flutter SDK (exe)
    C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.exe run -d chrome --web-port=8080
    goto :end
)

REM Check common Flutter locations
if exist "C:\flutter\bin\flutter.exe" (
    echo ✅ Found Flutter at C:\flutter
    C:\flutter\bin\flutter.exe run -d chrome --web-port=8080
    goto :end
)

if exist "C:\src\flutter\bin\flutter.exe" (
    echo ✅ Found Flutter at C:\src\flutter
    C:\src\flutter\bin\flutter.exe run -d chrome --web-port=8080
    goto :end
)

if exist "%USERPROFILE%\flutter\bin\flutter.exe" (
    echo ✅ Found Flutter in user profile
    "%USERPROFILE%\flutter\bin\flutter.exe" run -d chrome --web-port=8080
    goto :end
)

REM Try system PATH
flutter --version >nul 2>&1
if %errorlevel% == 0 (
    echo ✅ Found Flutter in system PATH
    flutter run -d chrome --web-port=8080
    goto :end
)

REM Flutter not found
echo ❌ Flutter not found in any common locations!
echo.
echo 🔍 Checked these locations:
echo - C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.exe
echo - C:\flutter\bin\flutter.exe
echo - C:\src\flutter\bin\flutter.exe
echo - %USERPROFILE%\flutter\bin\flutter.exe
echo - System PATH
echo.
echo 📥 QUICK INSTALL FLUTTER:
echo 1. Download: https://flutter.dev/docs/get-started/install/windows
echo 2. Extract to: C:\flutter
echo 3. Add to PATH: C:\flutter\bin
echo.
echo 🔧 OR MANUAL RUN:
echo 1. Install Flutter SDK
echo 2. Run: flutter run -d chrome --web-port=8080

:end
pause