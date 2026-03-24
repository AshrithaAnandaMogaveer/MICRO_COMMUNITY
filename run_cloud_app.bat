@echo off
echo ========================================
echo   MICRO COMMUNITY - CLOUD REAL-TIME
echo ========================================
echo.
echo ☁️ CLOUD REAL-TIME FEATURES:
echo   ✅ No setup required - works immediately
echo   ✅ No API keys needed
echo   ✅ Works across different PCs worldwide
echo   ✅ Real-time messaging and synchronization
echo   ✅ Real-time account synchronization (NEW!)
echo   ✅ Create account on PC1, login from PC2, PC3...
echo   ✅ Admin accounts sync globally
echo   ✅ Cloud-based data storage
echo   ✅ Automatic offline/online handling
echo.
echo Starting Flutter app with cloud integration...
echo.
echo 🌐 App will be available at: http://localhost:8080
echo 📱 Share this URL with users on other PCs for real-time chat!
echo.
echo 🔄 REAL-TIME SYNC PRIORITY:
echo   1. JSONBin Cloud Storage - REAL-TIME (Primary)
echo   2. Firebase Cloud Database - REAL-TIME (Backup)
echo   3. Local API Server - if running (Backup)
echo   4. Local Storage - offline mode (Fallback)
echo.
echo Press Ctrl+C to stop the app
echo.

C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat run -d chrome --web-port=8080

pause