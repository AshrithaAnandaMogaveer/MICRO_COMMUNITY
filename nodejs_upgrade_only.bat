@echo off
color 0B
echo.
echo  ███╗   ██╗ ██████╗ ██████╗ ███████╗         ██╗███████╗
echo  ████╗  ██║██╔═══██╗██╔══██╗██╔════╝         ██║██╔════╝
echo  ██╔██╗ ██║██║   ██║██║  ██║█████╗           ██║███████╗
echo  ██║╚██╗██║██║   ██║██║  ██║██╔══╝      ██   ██║╚════██║
echo  ██║ ╚████║╚██████╔╝██████╔╝███████╗    ╚█████╔╝███████║
echo  ╚═╝  ╚═══╝ ╚═════╝ ╚═════╝ ╚══════╝     ╚════╝ ╚══════╝
echo.
echo  🔄 NODE.JS UPGRADE UTILITY 🔄
echo.

echo 📊 Current Node.js version:
node --version
npm --version

echo.
echo 🎯 Required: Node.js v20.x or higher for Firebase CLI
echo 📥 Current: Node.js v18.20.3 (needs upgrade)
echo.

echo 🔄 UPGRADE OPTIONS:
echo.
echo 1️⃣  Automatic Download (Recommended)
echo 2️⃣  Manual Download
echo 3️⃣  Using Chocolatey (if installed)
echo 4️⃣  Using Winget (Windows 10/11)
echo 5️⃣  Check current version only
echo.
set /p choice="Choose upgrade method (1-5): "

if "%choice%"=="1" goto auto_download
if "%choice%"=="2" goto manual_download
if "%choice%"=="3" goto chocolatey
if "%choice%"=="4" goto winget
if "%choice%"=="5" goto check_version

:auto_download
echo.
echo 📥 AUTOMATIC DOWNLOAD (Recommended)
echo.
echo 🌐 Opening Node.js official download page...
start https://nodejs.org/en/download/

echo.
echo 📋 DOWNLOAD INSTRUCTIONS:
echo.
echo 1️⃣  Download "Windows Installer (.msi)"
echo    • Choose LTS version (v20.x or v22.x)
echo    • Select 64-bit for most systems
echo.
echo 2️⃣  Run the downloaded installer:
echo    • Accept license agreement
echo    • Keep all default settings
echo    • Click "Next" → "Next" → "Install"
echo    • Wait for installation (2-3 minutes)
echo.
echo 3️⃣  Restart Command Prompt/PowerShell
echo.
echo 4️⃣  Verify installation:
echo    • Run: node --version
echo    • Should show v20.x or higher
echo.
goto end

:manual_download
echo.
echo 📥 MANUAL DOWNLOAD
echo.
echo 🔗 Direct download links:
echo.
echo 💻 Windows 64-bit (Recommended):
echo    https://nodejs.org/dist/v20.10.0/node-v20.10.0-x64.msi
echo.
echo 💻 Windows 32-bit:
echo    https://nodejs.org/dist/v20.10.0/node-v20.10.0-x86.msi
echo.
echo 📋 After download:
echo    1. Run the .msi installer
echo    2. Follow installation wizard
echo    3. Restart terminal
echo    4. Run: node --version
echo.
goto end

:chocolatey
echo.
echo 🍫 CHOCOLATEY UPGRADE
echo.
echo Checking if Chocolatey is installed...
choco --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Chocolatey not found!
    echo.
    echo 📥 Install Chocolatey first:
    echo    https://chocolatey.org/install
    echo.
    echo Or choose option 1 for automatic download.
    goto end
)

echo ✅ Chocolatey found!
echo.
echo 🔄 Upgrading Node.js via Chocolatey...
choco upgrade nodejs -y

echo.
echo ✅ Upgrade complete! Restart terminal and run: node --version
goto end

:winget
echo.
echo 🪟 WINGET UPGRADE (Windows 10/11)
echo.
echo 🔄 Upgrading Node.js via Winget...
winget upgrade OpenJS.NodeJS

if %errorlevel% neq 0 (
    echo ❌ Winget upgrade failed!
    echo.
    echo 💡 Try installing fresh:
    winget install OpenJS.NodeJS
    
    if %errorlevel% neq 0 (
        echo ❌ Winget not available or failed.
        echo 💡 Use option 1 for automatic download.
    )
)

echo.
echo ✅ Upgrade complete! Restart terminal and run: node --version
goto end

:check_version
echo.
echo 📊 CURRENT VERSIONS:
echo.
node --version
npm --version
echo.
echo 🎯 Required for Firebase: v20.0.0 or higher
echo.
goto end

:end
echo.
echo 📋 AFTER UPGRADING NODE.JS:
echo.
echo 1️⃣  Restart Command Prompt/PowerShell
echo 2️⃣  Verify: node --version (should be v20.x+)
echo 3️⃣  Run: .\complete_firebase_setup.bat
echo.
echo ✅ Then your app will deploy to Firebase!
echo.
pause