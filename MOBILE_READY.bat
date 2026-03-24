@echo off
color 0A
echo.
echo  ███╗   ███╗ ██████╗ ██████╗ ██╗██╗     ███████╗
echo  ████╗ ████║██╔═══██╗██╔══██╗██║██║     ██╔════╝
echo  ██╔████╔██║██║   ██║██████╔╝██║██║     █████╗  
echo  ██║╚██╔╝██║██║   ██║██╔══██╗██║██║     ██╔══╝  
echo  ██║ ╚═╝ ██║╚██████╔╝██████╔╝██║███████╗███████╗
echo  ╚═╝     ╚═╝ ╚═════╝ ╚═════╝ ╚═╝╚══════╝╚══════╝
echo.
echo  🚀 MICRO COMMUNITY - INSTANT MOBILE APP 🚀
echo.
echo  Choose your mobile conversion method:
echo.
echo  1️⃣  PWA Install (INSTANT - 30 seconds)
echo  2️⃣  Online APK Builder (2 minutes)  
echo  3️⃣  Capacitor Wrapper (5 minutes)
echo  4️⃣  View Mobile Guide
echo  5️⃣  Exit
echo.
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" goto pwa
if "%choice%"=="2" goto online_apk
if "%choice%"=="3" goto capacitor
if "%choice%"=="4" goto guide
if "%choice%"=="5" goto exit

:pwa
echo.
echo 📱 PWA INSTALLATION - FASTEST METHOD!
echo.
call setup_instant_mobile.bat
goto end

:online_apk
echo.
echo 📦 ONLINE APK BUILDER
echo.
call create_apk_online.bat
goto end

:capacitor
echo.
echo 🔧 CAPACITOR SETUP
echo.
echo Installing Capacitor...
npm install -g @capacitor/cli
echo.
echo Creating mobile app...
npx cap init "Micro Community" com.microcommunity.app
npx cap add android
echo.
echo ✅ Capacitor setup complete!
echo Run: npx cap open android
goto end

:guide
echo.
echo 📖 Opening Mobile Guide...
start INSTANT_MOBILE_METHODS.md
goto end

:exit
echo.
echo 👋 Goodbye!
goto end

:end
echo.
echo ✅ Mobile conversion process complete!
echo.
pause