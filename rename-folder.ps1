# Script to rename the folder from "tags" to "porsche"
# Run this script when no programs are using the folder

$oldPath = "c:\Users\Kouki\IT PORTFOLIOS\tags"
$newPath = "c:\Users\Kouki\IT PORTFOLIOS\porsche"

if (Test-Path $oldPath) {
    try {
        Rename-Item -Path $oldPath -NewName "porsche" -ErrorAction Stop
        Write-Host "Folder successfully renamed from 'tags' to 'porsche'" -ForegroundColor Green
    } catch {
        Write-Host "Error: Could not rename folder. Make sure no programs are using it." -ForegroundColor Red
        Write-Host "Close File Explorer, IDE, or any other programs that might be accessing the folder." -ForegroundColor Yellow
    }
} else {
    Write-Host "Folder 'tags' not found at the specified path." -ForegroundColor Yellow
}

