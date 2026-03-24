@echo off
color 0A
echo.
echo  ███╗   ██╗███████╗████████╗██╗     ██╗███████╗██╗   ██╗
echo  ████╗  ██║██╔════╝╚══██╔══╝██║     ██║██╔════╝╚██╗ ██╔╝
echo  ██╔██╗ ██║█████╗     ██║   ██║     ██║█████╗   ╚████╔╝ 
echo  ██║╚██╗██║██╔══╝     ██║   ██║     ██║██╔══╝    ╚██╔╝  
echo  ██║ ╚████║███████╗   ██║   ███████╗██║██║        ██║   
echo  ╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚══════╝╚═╝╚═╝        ╚═╝   
echo.
echo  🚀 NETLIFY DEPLOYMENT - NO FIREBASE ISSUES! 🚀
echo.
echo  ✅ Faster than Firebase
echo  ✅ No CLI tools needed
echo  ✅ Just drag & drop!
echo  ✅ 2 minutes to worldwide deployment
echo.

echo 📦 Building Flutter web app for production...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons --release

if %errorlevel% neq 0 (
    echo ❌ Flutter build failed!
    pause
    exit /b 1
)

echo ✅ Flutter build successful!
echo.

echo 🌐 Opening Netlify for deployment...
start https://netlify.com

echo 📁 Opening your build folder...
start explorer build\web

echo.
echo 🎯 NETLIFY DEPLOYMENT STEPS (2 MINUTES):
echo.
echo 1️⃣  In Netlify website (just opened):
echo    • Click "Sign up" (free account)
echo    • Use GitHub, Google, or email signup
echo.
echo 2️⃣  After login, you'll see the deployment area:
echo    • Look for "Want to deploy a new site without connecting to Git?"
echo    • Or "Deploy manually" section
echo.
echo 3️⃣  In the opened 'build\web' folder:
echo    • Select ALL files (Ctrl+A)
echo    • Drag them to the Netlify deployment area
echo    • OR drag the entire 'web' folder
echo.
echo 4️⃣  Wait 30 seconds for deployment
echo.
echo 5️⃣  Get your URL: https://random-name.netlify.app
echo    • You can customize the name later
echo.
echo 🎉 DONE! Your app works worldwide!
echo.
echo 📱 MOBILE INSTALLATION:
echo    • Open Netlify URL on any phone
echo    • Tap browser menu → "Add to Home Screen"
echo    • App installs like native app
echo    • Works offline with local storage
echo.
echo ✅ BENEFITS:
echo    🌍 Works on ANY device worldwide
echo    🚀 No dependency on your PC
echo    🆓 Free forever (100GB bandwidth/month)
echo    🔒 HTTPS enabled automatically
echo    📱 Mobile PWA ready
echo    🔄 Easy updates (drag new files)
echo    ⚡ Fast global CDN
echo    🎯 Custom domain support
echo.
echo 💡 TIPS:
echo    • Bookmark your Netlify dashboard
echo    • To update: build again and drag new files
echo    • Free tier includes: 100GB bandwidth, 300 build minutes
echo.
pause