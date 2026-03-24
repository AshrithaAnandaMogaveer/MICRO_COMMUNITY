@echo off
color 0E
echo.
echo  ██████╗ ██╗████████╗██╗  ██╗██╗   ██╗██████╗ 
echo  ██╔════╝ ██║╚══██╔══╝██║  ██║██║   ██║██╔══██╗
echo  ██║  ███╗██║   ██║   ███████║██║   ██║██████╔╝
echo  ██║   ██║██║   ██║   ██╔══██║██║   ██║██╔══██╗
echo  ╚██████╔╝██║   ██║   ██║  ██║╚██████╔╝██████╔╝
echo   ╚═════╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 
echo.
echo  📚 GITHUB PAGES - FREE FOREVER HOSTING! 📚
echo.
echo  ✅ No Node.js upgrade needed!
echo  ✅ Free hosting forever!
echo  ✅ Professional .github.io domain!
echo.

echo 📦 Building for GitHub Pages...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons --base-href "/micro-community/"

echo.
echo 🌐 Opening GitHub for repository creation...
start https://github.com

echo 📁 Opening your build files...
start explorer build\web

echo.
echo 📋 GITHUB PAGES SETUP (5 MINUTES):
echo.
echo 1️⃣  In GitHub (opened in browser):
echo    • Sign up/Login (free account)
echo    • Click "New repository" (green button)
echo    • Repository name: micro-community
echo    • Make it Public ✅
echo    • Click "Create repository"
echo.
echo 2️⃣  Upload your files:
echo    • Click "uploading an existing file"
echo    • Drag ALL files from opened 'build\web' folder
echo    • Scroll down, click "Commit changes"
echo.
echo 3️⃣  Enable GitHub Pages:
echo    • Go to repository "Settings" tab
echo    • Scroll to "Pages" section (left sidebar)
echo    • Source: "Deploy from a branch"
echo    • Branch: "main"
echo    • Folder: "/ (root)"
echo    • Click "Save"
echo.
echo 4️⃣  Get your URL (wait 2-3 minutes):
echo    • https://yourusername.github.io/micro-community/
echo.
echo 🎉 DONE! Your app is live worldwide!
echo.
echo 📱 MOBILE INSTALLATION:
echo    • Open GitHub Pages URL on any phone
echo    • Tap "Add to Home Screen"
echo    • App installs like native app
echo.
echo ✅ BENEFITS:
echo    🌍 Works on ANY device worldwide
echo    🆓 Free forever (GitHub free tier)
echo    🔒 HTTPS enabled
echo    📱 Mobile PWA ready
echo    🔄 Easy updates (upload new files)
echo    💼 Professional domain
echo.
pause