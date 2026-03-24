@echo off
color 0C
echo.
echo  ███████╗██╗██╗  ██╗    ██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗
echo  ██╔════╝██║╚██╗██╔╝    ██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝
echo  █████╗  ██║ ╚███╔╝     ██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗  
echo  ██╔══╝  ██║ ██╔██╗     ██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝  
echo  ██║     ██║██╔╝ ██╗    ╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗
echo  ╚═╝     ╚═╝╚═╝  ╚═╝     ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝
echo.
echo  🔧 ADMIN PANEL FIX + DEPLOYMENT 🔧
echo.

echo ✅ FIXES APPLIED:
echo    • Community requests now display properly in admin panel
echo    • Admin-created communities appear in available communities
echo    • Real-time refresh every 10 seconds
echo    • Better error handling and loading states
echo    • Improved request approval/rejection flow
echo    • Manual refresh buttons added
echo.

echo 📦 Step 1: Building updated Flutter web app...
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat build web --no-tree-shake-icons --release

if %errorlevel% neq 0 (
    echo ❌ Flutter build failed!
    pause
    exit /b 1
)

echo ✅ Build successful!
echo.

echo 🚀 Step 2: Deploying to Firebase...
firebase deploy --only hosting

if %errorlevel% neq 0 (
    echo ❌ Firebase deployment failed!
    echo.
    echo 💡 Troubleshooting:
    echo    1. Check internet connection
    echo    2. Try: firebase login --reauth
    echo    3. Try: firebase use micro-community-22645
    echo    4. Try: firebase deploy --only hosting --force
    pause
    exit /b 1
)

echo.
echo 🎉 SUCCESS! ADMIN PANEL FIXES DEPLOYED! 🎉
echo.
echo 🌍 Your updated app is live at:
echo    https://micro-community-22645.web.app
echo.
echo 🔧 ADMIN PANEL IMPROVEMENTS:
echo    ✅ Community requests now display properly
echo    ✅ Admin can approve/reject requests in real-time
echo    ✅ Admin-created communities appear immediately
echo    ✅ Auto-refresh every 10 seconds
echo    ✅ Manual refresh buttons
echo    ✅ Better error handling
echo    ✅ Loading indicators
echo    ✅ Success/error notifications
echo.
echo 📱 TEST THE FIXES:
echo    1. Login as admin (ADMIN/admin@123)
echo    2. Create a new community
echo    3. Check if it appears in available communities
echo    4. Have a user request a community
echo    5. Check if request appears in admin panel
echo    6. Approve/reject the request
echo.
echo 🎯 REAL-TIME FEATURES:
echo    • Dashboard refreshes every 10 seconds
echo    • Manual refresh buttons available
echo    • Instant feedback on actions
echo    • Live community updates
echo.
pause