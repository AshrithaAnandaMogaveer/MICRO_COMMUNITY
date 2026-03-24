@echo off
echo 🎨 Creating app icons for Micro Community...
echo.

REM Create icon directories
mkdir android\app\src\main\res\mipmap-mdpi 2>nul
mkdir android\app\src\main\res\mipmap-hdpi 2>nul
mkdir android\app\src\main\res\mipmap-xhdpi 2>nul
mkdir android\app\src\main\res\mipmap-xxhdpi 2>nul
mkdir android\app\src\main\res\mipmap-xxxhdpi 2>nul

REM Copy favicon as app icon (you can replace with custom icons later)
copy web\favicon.png android\app\src\main\res\mipmap-mdpi\ic_launcher.png >nul 2>&1
copy web\favicon.png android\app\src\main\res\mipmap-hdpi\ic_launcher.png >nul 2>&1
copy web\favicon.png android\app\src\main\res\mipmap-xhdpi\ic_launcher.png >nul 2>&1
copy web\favicon.png android\app\src\main\res\mipmap-xxhdpi\ic_launcher.png >nul 2>&1
copy web\favicon.png android\app\src\main\res\mipmap-xxxhdpi\ic_launcher.png >nul 2>&1

echo ✅ App icons created successfully!
echo 📱 Your app will show "Micro Community" icon on phones
echo.
pause