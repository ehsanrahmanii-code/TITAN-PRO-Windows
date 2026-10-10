# TITAN PRO V75 — Windows EXE build (PowerShell)
$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

Write-Host "=== TITAN PRO V75 Windows EXE Builder ===" -ForegroundColor Cyan
python --version
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m PyInstaller --noconfirm TITAN_PRO.spec
Write-Host "Output: dist\TITAN_PRO.exe" -ForegroundColor Green
Write-Host "Data folder (hard-locked): C:\Users\ARSAM\Desktop\TITI"
