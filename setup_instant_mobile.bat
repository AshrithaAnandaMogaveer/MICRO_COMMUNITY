@echo off
echo 📱 INSTANT Mobile App Setup - Micro Community
echo.
echo 🚀 Converting your web app to mobile app in 30 seconds...
echo.

REM Get PC IP address
echo 🔍 Finding your PC's IP address...
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
    set IP=%%a
    goto :found
)
:found
set IP=%IP: =%

echo ✅ Your PC IP: %IP%
echo.

REM Start the web app
echo 🌐 Starting Micro Community web app...
start "Micro Community Backend" .\start_backend.bat
timeout /t 3 /nobreak >nul
start "Micro Community App" .\run_app.bat

echo.
echo 📱 MOBILE INSTALLATION INSTRUCTIONS:
echo.
echo 1️⃣ On your phone, open any browser (Chrome, Safari, etc.)
echo.
echo 2️⃣ Go to this URL: http://%IP%:8080
echo.
echo 3️⃣ Install as app:
echo    📱 Android Chrome: Menu → "Add to Home Screen"
echo    🍎 iPhone Safari: Share → "Add to Home Screen"
echo    🔷 Edge: Menu → "Apps" → "Install this site as an app"
echo.
echo 4️⃣ The app will appear on your phone's home screen!
echo.
echo ✅ DONE! Your web app is now a mobile app!
echo.
echo 🎯 Benefits:
echo    ✅ Works offline with local storage
echo    ✅ Syncs with cloud when online  
echo    ✅ Looks and feels like native app
echo    ✅ No app store needed
echo    ✅ Updates automatically
echo.
echo 📞 Troubleshooting:
echo    - Make sure phone and PC are on same WiFi
echo    - Try http://localhost:8080 if on same device
echo    - Check Windows Firewall if connection fails
echo.
pause