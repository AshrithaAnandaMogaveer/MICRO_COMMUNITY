@echo off
color 0C
echo.
echo  ███╗   ██╗ ██████╗     ███╗   ██╗ ██████╗ ██████╗ ███████╗
echo  ████╗  ██║██╔═══██╗    ████╗  ██║██╔═══██╗██╔══██╗██╔════╝
echo  ██╔██╗ ██║██║   ██║    ██╔██╗ ██║██║   ██║██║  ██║█████╗  
echo  ██║╚██╗██║██║   ██║    ██║╚██╗██║██║   ██║██║  ██║██╔══╝  
echo  ██║ ╚████║╚██████╔╝    ██║ ╚████║╚██████╔╝██████╔╝███████╗
echo  ╚═╝  ╚═══╝ ╚═════╝     ╚═╝  ╚═══╝ ╚═════╝ ╚═════╝ ╚══════╝
echo.
echo  🚀 DEPLOY WITHOUT NODE.JS UPGRADE 🚀
echo.
echo  Your Flutter app is built and ready!
echo  Choose your deployment method:
echo.
echo  1️⃣  Netlify (RECOMMENDED - 2 minutes)
echo  2️⃣  GitHub Pages (Free forever - 5 minutes)
echo  3️⃣  Vercel (Lightning fast - 3 minutes)
echo  4️⃣  Surge.sh (Quick & simple - 2 minutes)
echo  5️⃣  View all options
echo  6️⃣  Exit
echo.
set /p choice="Choose deployment method (1-6): "

if "%choice%"=="1" goto netlify
if "%choice%"=="2" goto github
if "%choice%"=="3" goto vercel
if "%choice%"=="4" goto surge
if "%choice%"=="5" goto all_options
if "%choice%"=="6" goto exit

:netlify
echo.
echo 🚀 NETLIFY DEPLOYMENT (RECOMMENDED)
call deploy_netlify_instant.bat
goto end

:github
echo.
echo 📚 GITHUB PAGES DEPLOYMENT
call deploy_github_pages_instant.bat
goto end

:vercel
echo.
echo ⚡ VERCEL DEPLOYMENT
call deploy_vercel_instant.bat
goto end

:surge
echo.
echo ⚡ SURGE.SH DEPLOYMENT
echo.
echo 🌐 Opening Surge.sh...
start https://surge.sh
echo 📁 Opening build folder...
start explorer build\web
echo.
echo 📋 SURGE.SH STEPS:
echo 1. Go to surge.sh
echo 2. Drag your 'build\web' folder
echo 3. Get instant URL
echo.
goto end

:all_options
echo.
echo 📖 Opening deployment guide...
start FIREBASE_DEPLOYMENT_STEPS.md
goto end

:exit
echo.
echo 👋 Goodbye!
goto end

:end
echo.
echo ✅ DEPLOYMENT INITIATED!
echo.
echo 🌍 After deployment, your Micro Community app will:
echo    ✅ Work on ANY device worldwide
echo    ✅ Function without your PC running
echo    ✅ Install as native app on phones
echo    ✅ Store data locally on each device
echo    ✅ Sync with cloud when available
echo.
echo 🎯 RECOMMENDED: Try Netlify first (option 1)
echo    It's the fastest and most reliable!
echo.
pause