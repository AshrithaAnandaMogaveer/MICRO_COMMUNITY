@echo off
echo.
echo ========================================
echo 🔥 MICRO COMMUNITY - REAL-TIME VERSION
echo ========================================
echo.
echo Starting app with real-time functionality...
echo.
echo ✅ REAL-TIME FEATURES ACTIVE:
echo 🔥 Firebase-first synchronization
echo 🔥 Instant cross-device updates
echo 🔥 Zero buffering delays
echo 🔥 Real-time admin panel
echo.

echo 📋 TESTING INSTRUCTIONS:
echo 1. App will open in Chrome browser
echo 2. Open SECOND browser tab for testing
echo 3. Login as ADMIN in first tab (ADMIN/admin@123)
echo 4. Login as USER in second tab (create account)
echo 5. Test real-time sync between tabs
echo.

echo 🧪 REAL-TIME TESTS:
echo ✅ Admin creates community → User sees INSTANTLY
echo ✅ User requests community → Admin sees INSTANTLY
echo ✅ Admin approves request → User sees INSTANTLY
echo.

echo 🚀 Starting Flutter app...
echo.

flutter pub get
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Failed to get dependencies!
    pause
    exit /b 1
)

echo ✅ Dependencies ready!
echo.

echo 🌐 Opening real-time app in Chrome...
flutter run -d chrome --web-port=8080

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo ❌ Failed to start app!
    echo.
    echo 🔧 TROUBLESHOOTING:
    echo - Make sure Flutter is installed
    echo - Make sure Chrome is available
    echo - Try: flutter devices
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✅ REAL-TIME APP RUNNING SUCCESSFULLY!
echo ========================================
echo.
pause