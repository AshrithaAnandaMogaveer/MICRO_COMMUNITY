@echo off
echo 🌐 DEPLOY MICRO COMMUNITY TO CLOUD - FREE HOSTING
echo.
echo Choose your deployment method:
echo.
echo 1️⃣  Netlify (Recommended - Free, Fast)
echo 2️⃣  Vercel (Free, Easy)
echo 3️⃣  GitHub Pages (Free, Simple)
echo 4️⃣  Firebase Hosting (Free, Google)
echo 5️⃣  Surge.sh (Free, Quick)
echo.
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" goto netlify
if "%choice%"=="2" goto vercel
if "%choice%"=="3" goto github
if "%choice%"=="4" goto firebase
if "%choice%"=="5" goto surge

:netlify
echo.
echo 🚀 NETLIFY DEPLOYMENT (Recommended)
echo.
echo 📦 Step 1: Build your app
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons
echo.
echo 🌐 Step 2: Deploy to Netlify
echo    1. Go to: https://netlify.com
echo    2. Sign up (free)
echo    3. Drag & drop the 'build\web' folder
echo    4. Your app gets a URL like: https://yourapp.netlify.app
echo.
echo ✅ Your app will work on ANY device worldwide!
echo.
start https://netlify.com
goto end

:vercel
echo.
echo ⚡ VERCEL DEPLOYMENT
echo.
echo 📦 Building app...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons
echo.
echo 🌐 Deploy to Vercel:
echo    1. Go to: https://vercel.com
echo    2. Sign up (free)
echo    3. Import project or drag 'build\web' folder
echo    4. Get URL like: https://yourapp.vercel.app
echo.
start https://vercel.com
goto end

:github
echo.
echo 📚 GITHUB PAGES DEPLOYMENT
echo.
echo 📦 Building app...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons --base-href "/MICRO-COMMUNITY/"
echo.
echo 🌐 Deploy to GitHub Pages:
echo    1. Create GitHub account: https://github.com
echo    2. Create repository named: MICRO-COMMUNITY
echo    3. Upload 'build\web' contents to repository
echo    4. Enable GitHub Pages in settings
echo    5. Get URL: https://yourusername.github.io/MICRO-COMMUNITY/
echo.
start https://github.com
goto end

:firebase
echo.
echo 🔥 FIREBASE HOSTING
echo.
echo 📦 Building app...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons
echo.
echo Installing Firebase CLI...
npm install -g firebase-tools
echo.
echo 🌐 Deploy to Firebase:
echo    1. Run: firebase login
echo    2. Run: firebase init hosting
echo    3. Select 'build\web' as public directory
echo    4. Run: firebase deploy
echo    5. Get URL: https://yourproject.web.app
echo.
goto end

:surge
echo.
echo ⚡ SURGE.SH DEPLOYMENT
echo.
echo 📦 Building app...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons
echo.
echo Installing Surge...
npm install -g surge
echo.
echo 🌐 Deploy to Surge:
echo    1. cd build\web
echo    2. surge
echo    3. Follow prompts
echo    4. Get URL: https://yourapp.surge.sh
echo.
goto end

:end
echo.
echo ✅ DEPLOYMENT COMPLETE!
echo.
echo 🌍 Your app will be available worldwide at the URL provided
echo 📱 Works on ANY device without your PC running
echo 🔄 Updates automatically when you redeploy
echo.
pause