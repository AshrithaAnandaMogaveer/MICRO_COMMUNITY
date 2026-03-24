@echo off
echo 📚 GITHUB PAGES DEPLOYMENT - FREE FOREVER!
echo.

echo 📦 Building for GitHub Pages...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons --base-href "/micro-community/"

echo.
echo ✅ Build complete!
echo.
echo 🌐 GITHUB PAGES SETUP:
echo.
echo 1️⃣  Go to: https://github.com (opening now...)
echo 2️⃣  Sign up for free account
echo 3️⃣  Click "New repository"
echo 4️⃣  Name it: micro-community
echo 5️⃣  Make it Public
echo 6️⃣  Create repository
echo.
echo 📁 UPLOAD FILES:
echo 7️⃣  Click "uploading an existing file"
echo 8️⃣  Drag ALL files from 'build\web' folder
echo 9️⃣  Commit changes
echo.
echo ⚙️  ENABLE GITHUB PAGES:
echo 🔟  Go to repository Settings
echo 1️⃣1️⃣  Scroll to "Pages" section
echo 1️⃣2️⃣  Source: "Deploy from a branch"
echo 1️⃣3️⃣  Branch: "main" 
echo 1️⃣4️⃣  Folder: "/ (root)"
echo 1️⃣5️⃣  Save
echo.
echo 🎉 YOUR APP URL:
echo    https://yourusername.github.io/micro-community/
echo.
echo 📱 This URL works on ANY device worldwide!
echo.

start https://github.com
start explorer build\web

echo.
echo 📁 Files to upload are in the opened folder
echo 🌐 GitHub is open in browser
echo.
pause