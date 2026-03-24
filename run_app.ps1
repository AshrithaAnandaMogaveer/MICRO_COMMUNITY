Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   MICRO COMMUNITY - INSTANT RESPONSE" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Starting Micro Community App on http://localhost:8080" -ForegroundColor Green
Write-Host ""
Write-Host "✅ NO MORE BUFFERING - All functions are instant!" -ForegroundColor Green
Write-Host "✅ Data will persist at this URL!" -ForegroundColor Green
Write-Host "✅ Bookmark: http://localhost:8080" -ForegroundColor Green
Write-Host ""

# Try different Flutter paths
$flutterPaths = @(
    "C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.exe",
    "C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat",
    "flutter"
)

$flutterFound = $false

foreach ($path in $flutterPaths) {
    if (Test-Path $path -ErrorAction SilentlyContinue) {
        Write-Host "Using Flutter at: $path" -ForegroundColor Yellow
        & $path run -d chrome --web-port=8080 --web-hostname=localhost
        $flutterFound = $true
        break
    } elseif ($path -eq "flutter") {
        try {
            & flutter run -d chrome --web-port=8080 --web-hostname=localhost
            $flutterFound = $true
            break
        } catch {
            # Continue to next option
        }
    }
}

if (-not $flutterFound) {
    Write-Host "❌ Flutter not found!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Expected paths:" -ForegroundColor Yellow
    Write-Host "- C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.exe" -ForegroundColor Yellow
    Write-Host "- C:\FlutterProjects\PROJECT_1\flutter\bin\flutter.bat" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Manual run instructions:" -ForegroundColor Cyan
    Write-Host "1. Open Command Prompt (cmd)" -ForegroundColor White
    Write-Host "2. Navigate to this folder" -ForegroundColor White
    Write-Host "3. Run: flutter run -d chrome --web-port=8080" -ForegroundColor White
}

Read-Host "Press Enter to exit"