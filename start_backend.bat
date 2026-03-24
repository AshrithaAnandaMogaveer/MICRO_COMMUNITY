@echo off
echo Starting Micro Community Backend Server...
echo.
echo Installing dependencies (if needed)...
cd backend
call npm install
echo.
echo Starting server on http://localhost:3000
echo Press Ctrl+C to stop the server
echo.
node server.js
pause