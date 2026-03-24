@echo off
echo ========================================
echo   MICRO COMMUNITY - LOCAL STORAGE MODE
echo ========================================
echo.
echo 📱 LOCAL STORAGE FEATURES:
echo   ✅ Instant response - no network delays
echo   ✅ Works offline completely
echo   ✅ Fast account creation and login
echo   ✅ Local messaging and communities
echo   ✅ No internet required
echo.
echo Starting Flutter app in local mode...
echo.
echo 🌐 App will be available at: http://localhost:8084
echo 📱 All data stored locally on this PC only
echo.
echo 🔄 STORAGE MODE: Local Only
echo   • Instant account creation/login
echo   • No cloud sync (single PC only)
echo   • Perfect for testing and offline use
echo.
echo Press Ctrl+C to stop the app
echo.

C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat run -d chrome --web-port=8084

pause