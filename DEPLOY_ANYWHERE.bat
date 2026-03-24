@echo off
color 0B
echo.
echo  ██████╗ ███████╗██████╗ ██╗      ██████╗ ██╗   ██╗
echo  ██╔══██╗██╔════╝██╔══██╗██║     ██╔═══██╗╚██╗ ██╔╝
echo  ██║  ██║█████╗  ██████╔╝██║     ██║   ██║ ╚████╔╝ 
echo  ██║  ██║██╔══╝  ██╔═══╝ ██║     ██║   ██║  ╚██╔╝  
echo  ██████╔╝███████╗██║     ███████╗╚██████╔╝   ██║   
echo  ╚═════╝ ╚══════╝╚═╝     ╚══════╝ ╚═════╝    ╚═╝   
echo.
echo  🌍 DEPLOY MICRO COMMUNITY WORLDWIDE 🌍
echo.
echo  Make your app work on ANY device without your PC!
echo.
echo  🚀 FASTEST METHODS (2-5 minutes):
echo.
echo  1️⃣  Netlify Drop (RECOMMENDED - 2 min)
echo  2️⃣  GitHub Pages (Free forever - 5 min)
echo  3️⃣  Vercel (Fast deployment - 3 min)
echo  4️⃣  Create Standalone APK (No internet needed)
echo  5️⃣  View deployment guide
echo  6️⃣  Exit
echo.
set /p choice="Choose deployment method (1-6): "

if "%choice%"=="1" goto netlify
if "%choice%"=="2" goto github
if "%choice%"=="3" goto vercel
if "%choice%"=="4" goto apk
if "%choice%"=="5" goto guide
if "%choice%"=="6" goto exit

:netlify
echo.
echo 🚀 NETLIFY DEPLOYMENT (FASTEST!)
call quick_deploy_netlify.bat
goto end

:github
echo.
echo 📚 GITHUB PAGES DEPLOYMENT
call deploy_github_pages.bat
goto end

:vercel
echo.
echo ⚡ VERCEL DEPLOYMENT
call deploy_to_cloud.bat
goto end

:apk
echo.
echo 📱 STANDALONE APK CREATION
call create_standalone_apk.bat
goto end

:guide
echo.
echo 📖 Opening deployment guide...
start INSTANT_MOBILE_METHODS.md
goto end

:exit
echo.
echo 👋 Goodbye!
goto end

:end
echo.
echo ✅ DEPLOYMENT PROCESS INITIATED!
echo.
echo 🌍 After deployment, your app will:
echo    ✅ Work on ANY device worldwide
echo    ✅ Function without your PC running
echo    ✅ Install as native app on phones
echo    ✅ Store data locally on each device
echo    ✅ Sync with cloud when available
echo.
pause