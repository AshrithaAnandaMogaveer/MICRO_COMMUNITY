@echo off
echo 📦 Create APK Online - Micro Community
echo.
echo 🌐 Using online APK builders (No local build needed!)
echo.

REM Start the web app first
echo 🚀 Starting your web app...
start "Backend" .\start_backend.bat
timeout /t 3 /nobreak >nul
start "Web App" .\run_app.bat

echo.
echo 📱 ONLINE APK CREATION METHODS:
echo.
echo 🔷 Method 1: PWABuilder (Microsoft) - RECOMMENDED
echo    1. Go to: https://www.pwabuilder.com/
echo    2. Enter URL: http://localhost:8080
echo    3. Click "Start" → "Build My PWA"
echo    4. Download Android APK
echo    5. Install on phone
echo.
echo 🔷 Method 2: Capacitor Online
echo    1. Go to: https://capacitorjs.com/
echo    2. Use their online builder
echo    3. Upload your web app
echo    4. Generate APK
echo.
echo 🔷 Method 3: AppsGeyser (Free)
echo    1. Go to: https://appsgeyser.com/
echo    2. Choose "Website" → "Convert website to app"
echo    3. Enter URL: http://YOUR_PC_IP:8080
echo    4. Customize and download APK
echo.
echo 🔷 Method 4: Appy Pie
echo    1. Go to: https://www.appypie.com/
echo    2. Create web app wrapper
echo    3. Enter your URL
echo    4. Generate APK
echo.
echo ⚡ FASTEST: Use PWABuilder - takes 2 minutes!
echo.
echo 📝 Your app URL for online builders:
echo    Local: http://localhost:8080
echo    Network: http://YOUR_PC_IP:8080
echo.
pause

REM Open PWABuilder automatically
echo 🌐 Opening PWABuilder for you...
start https://www.pwabuilder.com/

echo.
echo ✅ PWABuilder opened in your browser!
echo 📝 Enter your app URL and follow the steps above.
echo.
pause