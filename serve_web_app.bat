@echo off
echo 🌐 Starting Micro Community Web Server...
echo.

REM Check if Python is available
python --version >nul 2>&1
if %errorlevel% == 0 (
    echo 🐍 Using Python HTTP server...
    cd build\web
    echo ✅ Micro Community running on: http://localhost:8080
    echo 📱 Mobile URL: http://192.168.49.5:8080
    echo.
    echo 🚀 App is ready! Open the URL above in your browser.
    echo.
    python -m http.server 8080
) else (
    echo ❌ Python not found. Trying Node.js...
    
    REM Check if Node.js is available
    node --version >nul 2>&1
    if %errorlevel% == 0 (
        echo 📦 Using Node.js HTTP server...
        cd build\web
        echo ✅ Micro Community running on: http://localhost:8080
        echo 📱 Mobile URL: http://192.168.49.5:8080
        echo.
        echo 🚀 App is ready! Open the URL above in your browser.
        echo.
        npx http-server -p 8080 -c-1
    ) else (
        echo ❌ Neither Python nor Node.js found.
        echo.
        echo 📁 Your web app is built in: build\web
        echo 🌐 You can serve it using any web server on port 8080
        echo.
        echo 💡 Quick solutions:
        echo 1. Install Python: https://python.org
        echo 2. Or use VS Code Live Server extension
        echo 3. Or use any local web server
        pause
    )
)