#!/bin/bash
# DarkGPT Lite - Run Script for Linux/macOS
# This script runs DarkGPT Lite with automatic setup

echo "========================================"
echo "   DarkGPT Lite - Starting..."
echo "========================================"
echo ""

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
    echo "Error: Python 3 is not installed."
    echo "Please install Python 3.9 or higher from https://www.python.org/downloads/"
    exit 1
fi

# Display Python version
PYTHON_VERSION=$(python3 --version)
echo "Using: $PYTHON_VERSION"
echo ""

# Check Python version is at least 3.9
PYTHON_MAJOR=$(python3 -c 'import sys; print(sys.version_info.major)')
PYTHON_MINOR=$(python3 -c 'import sys; print(sys.version_info.minor)')

if [ "$PYTHON_MAJOR" -lt 3 ] || ([ "$PYTHON_MAJOR" -eq 3 ] && [ "$PYTHON_MINOR" -lt 9 ]); then
    echo "Error: Python 3.9 or higher is required."
    echo "Your version: Python $PYTHON_MAJOR.$PYTHON_MINOR"
    echo "Please upgrade Python from https://www.python.org/downloads/"
    exit 1
fi

# Display warning
echo "⚠️  WARNING: DarkGPT Lite requires an OpenAI API key to function."
echo "   Make sure you have your API key ready."
echo "   See SETUP.md for detailed instructions."
echo ""
echo "Starting DarkGPT Lite in 2 seconds..."
sleep 2

# Run the script
python3 darkgpt.py

# Check exit status
EXIT_CODE=$?
if [ $EXIT_CODE -ne 0 ]; then
    echo ""
    echo "⚠️  DarkGPT Lite exited with an error (code: $EXIT_CODE)"
    echo "   See SETUP.md for troubleshooting help."
    exit $EXIT_CODE
fi
