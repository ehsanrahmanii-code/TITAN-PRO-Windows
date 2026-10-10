@echo off
chcp 65001 >nul
title TITAN PRO - Build EXE
cd /d "%~dp0"

echo ========================================
echo   TITAN PRO V75 - Windows EXE Builder
echo ========================================
echo.

where python >nul 2>&1
if errorlevel 1 (
  echo [ERROR] Python not found. Install Python 3.11+ from https://python.org
  echo         Enable "Add Python to PATH" during install.
  pause
  exit /b 1
)

python -c "import sys; print(sys.version)"
echo.

echo [1/4] Upgrading pip...
python -m pip install --upgrade pip

echo [2/4] Installing dependencies...
python -m pip install -r requirements.txt

echo [3/4] Building EXE with PyInstaller (one-file)...
python -m PyInstaller --noconfirm TITAN_PRO.spec

if errorlevel 1 (
  echo [ERROR] Build failed.
  pause
  exit /b 1
)

echo.
echo [4/4] Done.
echo.
echo Output:  dist\TITAN_PRO.exe
echo.
echo How to run:
echo   1. Copy dist\TITAN_PRO.exe anywhere (or leave it).
echo   2. Double-click TITAN_PRO.exe
echo   3. Browser opens http://127.0.0.1:8765
echo   4. Data is stored ONLY in: C:\Users\ARSAM\Desktop\TITI
echo      (create that folder or change TITAN_WIN_HOME in the source)
echo.
echo Optional API keys: put txt files inside TITI\secrets\
echo.
pause
