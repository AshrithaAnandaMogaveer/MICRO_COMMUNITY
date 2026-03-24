# Micro Community App

A beautiful Flutter micro community application with stunning UI, real-time chat, and persistent data storage.

## ✨ Features

- 🎨 Beautiful gradient UI with animations
- 👥 User & Admin authentication
- 💬 Real-time community chat
- 📸 Image upload support
- 💾 Persistent data storage (LocalStorage)
- 🔄 Multi-user synchronization
- 🏘️ Community management (Admin)
- 📱 Responsive design

## 🚀 Getting Started

### Prerequisites
- Flutter SDK installed at: `C:\FlutterProjects\PROJECT_1\flutter`

### Installation

1. Install Flutter dependencies:
```bash
flutter pub get
```

### Running the App

**⭐ RECOMMENDED: Use Fixed Port (Data Persists!)**

**Option 1: Double-click the batch file**
```
run_app.bat
```

**Option 2: Run from command line**
```bash
C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat run -d chrome --web-port=8080 --web-hostname=localhost
```

**Option 3: Use VS Code**
- Press F5 or click "Run and Debug"
- Select "Flutter Web (Fixed Port)"

### 🔗 Access the App
Once running, open: **http://localhost:8080**

**⚠️ IMPORTANT:** Always use `http://localhost:8080` to keep your data!
- Bookmark this URL
- Data persists across app restarts
- Communities and messages won't vanish

## 📦 Data Persistence

All data is stored in browser's LocalStorage:
- ✅ Communities created by admin
- ✅ Messages in all communities  
- ✅ User accounts
- ✅ Member counts

**To view stored data:**
1. Open Chrome DevTools (F12)
2. Go to Application → Local Storage → http://localhost:8080
3. See all your data!

**To clear all data:**
1. Chrome DevTools → Application → Local Storage
2. Right-click → Clear

## 👤 Default Admin Credentials

- **Username:** ADMIN
- **Password:** admin@123

## 🏗️ Project Structure

```
lib/
├── main.dart                          # App entry point
├── models/
│   └── community_data.dart           # Data management & persistence
├── screens/
│   ├── welcome_screen.dart           # Landing page
│   ├── auth_dialog.dart              # Authentication options
│   ├── create_account_dialog.dart    # User registration
│   ├── login_dialog.dart             # User login
│   ├── create_admin_account_dialog.dart  # Admin registration
│   ├── admin_login_dialog.dart       # Admin login
│   ├── home_screen.dart              # User dashboard
│   ├── admin_dashboard_screen.dart   # Admin panel
│   └── community_chat_screen.dart    # Chat interface
```

## 🎯 How to Use

### As User:
1. Click "Let's Start"
2. Choose "Create User Account" or "Login as User"
3. Fill in details and submit
4. Click "Available Community" to see all communities
5. Join any community and start chatting!

### As Admin:
1. Click "Let's Start"
2. Choose "Create Admin Account" (email must be admin@gmail.com)
3. Or "Login as Admin" with default credentials
4. View statistics and manage communities
5. Create new communities with "Create New Community" button

## 🔄 Real-Time Features

- Messages sync every 1 second
- All users see messages in real-time
- Live member count updates
- Green indicator shows sync is active

## 🛠️ Troubleshooting

**Data not persisting?**
- Make sure you're using `http://localhost:8080`
- Don't use random ports from `flutter run`
- Use the provided `run_app.bat` script

**Can't see other users' messages?**
- Wait 1 second for auto-refresh
- Check if you're in the same community
- Refresh the page (F5)

## 📝 Notes

- This is a development version
- Data is stored locally in browser
- For production, build with: `flutter build web`
- Each browser has separate storage
