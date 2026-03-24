# 🌐 Micro Community - Real-Time Multi-Device Setup

## Overview
Your Flutter Micro Community app now supports **real-time messaging across multiple devices worldwide**! Users on different PCs can chat simultaneously and see messages instantly using Firebase cloud database.

## 🔥 Firebase Real-Time Features (NEW!)
- **No API keys required** - Uses Firebase demo configuration
- **Works across different PCs worldwide** - Not limited to local network
- **Real-time synchronization** - Messages appear instantly on all devices
- **Cloud-based storage** - Data persists across sessions
- **Automatic offline handling** - Falls back to local storage when offline

## 🚀 Quick Start

### Option 1: Firebase Real-Time (Recommended - Works Worldwide!)
```bash
# Run Firebase-enabled app for worldwide real-time sync
run_firebase_app.bat
```

### Option 2: Local Network Real-Time
```bash
# Run with local backend server (same network only)
run_realtime_app.bat
```

### Option 3: Local Storage Only
```bash
# Run basic app with local storage
run_app.bat
```

## 📋 Prerequisites

### For Firebase Real-Time (Recommended)
- **No additional setup required!**
- Flutter SDK (already configured)
- Chrome browser for web deployment
- Internet connection for real-time sync

### For Local Backend Server (Optional)
- Install Node.js from https://nodejs.org/
- The backend will automatically install dependencies

### For Flutter App
- Flutter SDK (already configured)
- Chrome browser for web deployment

## 🌟 Real-Time Features

### ✅ What Works Across Multiple Devices:
- **Real-time messaging** - Messages appear instantly on all devices
- **Image sharing** - Images sync across all connected users
- **Community management** - New communities appear on all devices
- **User registration/login** - Accounts sync across devices
- **Member counts** - Live updates when users join communities

### 🔄 Automatic Fallback:
- If backend server is offline, app uses local storage
- When server comes back online, data syncs automatically
- No data loss during offline periods

## 🖥️ Multi-Device Testing

### Test on Same PC:
1. Start the backend server
2. Open multiple browser windows/tabs
3. Login with different accounts
4. Chat in real-time!

### Test on Different PCs:
1. Start backend server on one PC
2. Note the IP address (e.g., 192.168.1.100)
3. Update `lib/services/api_service.dart`:
   ```dart
   static const String baseUrl = 'http://192.168.1.100:3000/api';
   ```
4. Run Flutter app on other PCs
5. All devices will sync in real-time!

## 📊 Backend API Endpoints

- `GET /api/health` - Server health check
- `POST /api/users/register` - Register new user
- `POST /api/users/login` - User login
- `GET /api/communities` - Get all communities
- `POST /api/communities` - Create community
- `GET /api/messages/:communityName` - Get messages
- `POST /api/messages/:communityName` - Send message

## 🔧 Configuration

### Backend Server (Port 3000)
- Data stored in `backend/data/` folder
- JSON files for users, communities, messages
- CORS enabled for Flutter web app

### Flutter App (Port 8080)
- Real-time updates every 1 second
- Automatic API/local storage fallback
- Persistent data across sessions

## 🐛 Troubleshooting

### Backend Server Issues:
```bash
# Check if Node.js is installed
node --version

# Install dependencies manually
cd backend
npm install

# Start server manually
node server.js
```

### Flutter App Issues:
```bash
# Get dependencies
flutter pub get

# Check for errors
flutter analyze

# Run with verbose logging
flutter run -d chrome --web-port=8080 -v
```

### Network Issues:
- Ensure both devices are on same network
- Check firewall settings (allow port 3000)
- Use IP address instead of localhost for cross-device

## 📁 File Structure
```
MICRO COMMUNITY/
├── backend/
│   ├── server.js          # Node.js backend server
│   ├── package.json       # Backend dependencies
│   └── data/              # JSON data storage
├── lib/
│   ├── services/
│   │   └── api_service.dart    # HTTP API client
│   ├── models/
│   │   └── community_data.dart # Updated with API integration
│   └── screens/           # Flutter UI screens
├── run_realtime_app.bat   # Start everything automatically
├── start_backend.bat      # Start backend only
└── run_app.bat           # Start Flutter only
```

## 🎉 Success Indicators

### Backend Server Running:
```
🚀 Micro Community Backend Server running on http://localhost:3000
📊 API Health Check: http://localhost:3000/api/health
💬 Real-time messaging enabled across multiple devices!
```

### Flutter App Connected:
- Messages sync instantly across devices
- New users appear in real-time
- Communities update automatically
- No "offline" indicators in console

## 💡 Tips for Best Experience

1. **Keep backend server running** for real-time features
2. **Use different usernames** on different devices for testing
3. **Check console logs** for connection status
4. **Refresh browser** if connection issues occur
5. **Use Chrome** for best Flutter web performance

Enjoy your real-time multi-device community app! 🎊