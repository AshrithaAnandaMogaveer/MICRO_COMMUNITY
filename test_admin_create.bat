@echo off
echo Testing Admin Panel Create Community Functionality
echo.
echo 1. Starting Flutter app in local-first mode...
echo 2. Navigate to Admin Dashboard
echo 3. Click "CREATE NEW COMMUNITY" button
echo 4. Fill in community details
echo 5. Click "Create" button
echo.
echo Expected Result:
echo - Community should be created instantly
echo - Success message should appear
echo - Community should appear in the list
echo.
echo Starting app...
flutter run -d chrome --web-port=8080