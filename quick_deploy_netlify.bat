@echo off
echo 🚀 QUICK NETLIFY DEPLOYMENT - 2 MINUTES TO WORLDWIDE ACCESS!
echo.

echo 📦 Building your app for production...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons --release

echo.
echo ✅ Build complete! Your app is in: build\web
echo.
echo 🌐 NETLIFY DEPLOYMENT STEPS:
echo.
echo 1️⃣  Open: https://netlify.com (opening now...)
echo 2️⃣  Click "Sign up" (use GitHub/Google for easy signup)
echo 3️⃣  After login, you'll see "Want to deploy a new site without connecting to Git?"
echo 4️⃣  Drag the ENTIRE 'build\web' folder to the deployment area
echo 5️⃣  Wait 30 seconds for deployment
echo 6️⃣  Get your URL: https://random-name.netlify.app
echo 7️⃣  DONE! Your app works worldwide!
echo.
echo 📱 MOBILE INSTALLATION:
echo    - Open the Netlify URL on any phone
echo    - Tap "Add to Home Screen"
echo    - App installs like native app
echo    - Works offline with local storage
echo.
echo 🎯 BENEFITS:
echo    ✅ Works on ANY device worldwide
echo    ✅ No dependency on your PC
echo    ✅ Free forever (Netlify free tier)
echo    ✅ Fast global CDN
echo    ✅ HTTPS enabled
echo    ✅ Custom domain possible
echo.

start https://netlify.com
start explorer build\web

echo.
echo 📁 The 'build\web' folder is now open
echo 🌐 Netlify website is open in browser
echo.
echo 👆 Just drag the 'web' folder to Netlify!
echo.
pause