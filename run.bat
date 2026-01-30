@echo off
REM DarkGPT Lite - Run Script for Windows
REM This script runs DarkGPT Lite with automatic setup

echo ========================================
echo    DarkGPT Lite - Starting...
echo ========================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Python is not installed or not in PATH.
    echo Please install Python 3.9 or higher from https://www.python.org/downloads/
    echo Make sure to check "Add Python to PATH" during installation.
    pause
    exit /b 1
)

REM Display Python version
echo Using:
python --version
echo.

REM Display warning
echo WARNING: DarkGPT Lite requires an OpenAI API key to function.
echo          Make sure you have your API key ready.
echo          See SETUP.md for detailed instructions.
echo.
echo Starting DarkGPT Lite in 2 seconds...
timeout /t 2 /nobreak >nul

REM Run the script
python darkgpt.py

REM Check exit status
if %errorlevel% neq 0 (
    echo.
    echo WARNING: DarkGPT Lite exited with an error (code: %errorlevel%^)
    echo          See SETUP.md for troubleshooting help.
    pause
    exit /b %errorlevel%
)
