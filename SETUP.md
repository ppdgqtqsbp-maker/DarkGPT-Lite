# DarkGPT Lite - Setup and Run Guide

This guide provides detailed instructions on how to set up and run DarkGPT Lite on your system.

## Prerequisites

Before running DarkGPT Lite, ensure you have the following:

1. **Python 3.9 or higher** installed on your system
   - Check your Python version: `python3 --version` or `python --version`
   - Download Python from: https://www.python.org/downloads/

2. **Internet Connection** - Required for:
   - Installing dependencies
   - API communication with OpenAI

3. **OpenAI API Key** - You'll need a valid OpenAI API key
   - Create an account at: https://platform.openai.com/
   - Generate an API key from: https://platform.openai.com/api-keys
   - **⚠️ Warning**: Keep your API key secure and never share it publicly

## Quick Start

### Option 1: Automatic Setup (Recommended)

The script automatically creates a virtual environment and installs all dependencies:

```bash
# Clone the repository (if you haven't already)
git clone https://github.com/InfoSecREDD/DarkGPT-Lite.git
cd DarkGPT-Lite

# Run the script
python3 darkgpt.py
```

On first run, the script will:
1. Create a virtual environment in `.darkgpt_venv/`
2. Install all required dependencies automatically
3. Prompt you to enter your OpenAI API key
4. Start the main menu

### Option 2: Manual Setup

If you prefer to set up the environment manually:

```bash
# Clone the repository
git clone https://github.com/InfoSecREDD/DarkGPT-Lite.git
cd DarkGPT-Lite

# Create a virtual environment
python3 -m venv .darkgpt_venv

# Activate the virtual environment
# On Linux/macOS:
source .darkgpt_venv/bin/activate
# On Windows:
.darkgpt_venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Run the script
python darkgpt.py
```

## Platform-Specific Instructions

### Linux / macOS

```bash
# Make the script executable (optional)
chmod +x darkgpt.py

# Run the script
python3 darkgpt.py
# Or if you made it executable:
./darkgpt.py
```

### Windows

```cmd
# Run with Python
python darkgpt.py
```

Or use the provided batch file:
```cmd
run.bat
```

## First-Time Setup

When you run DarkGPT Lite for the first time:

1. **API Key Warning**: You'll see a warning about API key usage. Read it carefully.

2. **Enter API Key**: You'll be prompted to enter your OpenAI API key
   - Paste your API key when prompted
   - The key will be saved in `.darkgpt_config.json` in the current directory
   - **Security Note**: Keep this config file private and never commit it to version control

3. **Main Menu**: After setup, you'll see the main menu with available options

## Configuration

DarkGPT Lite stores its configuration in `.darkgpt_config.json` which includes:
- OpenAI API key
- Selected AI model
- System message/prompt
- Other preferences

### Changing Your API Key

If you need to change your API key:
1. Select option "7. Change API Key" from the main menu
2. Enter your new API key when prompted

Or manually edit `.darkgpt_config.json`:
```json
{
  "api_key": "your-new-api-key-here",
  "model": "gpt-3.5-turbo",
  "system_message": "..."
}
```

## Available Features

Once running, DarkGPT Lite provides:

1. **Chat with DarkGPT Lite** - Interactive AI conversations
2. **Create New Project** - Generate code projects with AI
3. **List Projects** - View your existing projects
4. **Edit Project** - Modify project files
5. **Delete Project** - Remove projects
6. **Run Project** - Execute Python projects
7. **Change API Key** - Update your OpenAI API key
8. **Edit System Message** - Customize AI behavior
9. **Change AI Model** - Switch between AI models
10. **Reset Settings** - Restore default configuration
11. **Check for Updates** - Update to latest version

## Troubleshooting

### Python Version Issues

If you get an error about Python version:
```bash
# Check your Python version
python3 --version

# Ensure it's 3.9 or higher
# If not, install a newer version from python.org
```

### Virtual Environment Issues

If the virtual environment fails to create:
```bash
# Remove the existing venv directory
rm -rf .darkgpt_venv

# Try creating it manually
python3 -m venv .darkgpt_venv

# Run the script again
python3 darkgpt.py
```

### Dependency Installation Fails

If automatic dependency installation fails:
```bash
# Activate the virtual environment
source .darkgpt_venv/bin/activate  # Linux/macOS
# Or: .darkgpt_venv\Scripts\activate  # Windows

# Install dependencies manually
pip install --upgrade pip
pip install -r requirements.txt
```

### API Key Errors

If you get API key errors:
- Verify your API key is correct at https://platform.openai.com/api-keys
- Check you have credits/billing set up on your OpenAI account
- Ensure your API key has the necessary permissions

### Permission Denied (Linux/macOS)

If you get "Permission denied" errors:
```bash
# Make the script executable
chmod +x darkgpt.py

# Or run with python3
python3 darkgpt.py
```

## Security Best Practices

1. **Never share your API key** - Keep it private and secure
2. **Don't commit .darkgpt_config.json** - It's already in .gitignore
3. **Monitor API usage** - Check your OpenAI dashboard regularly
4. **Set spending limits** - Configure limits in your OpenAI account
5. **Review generated content** - Always verify AI-generated code/content
6. **Read the DISCLAIMER** - Understand the terms and limitations

## Environment Variables (Optional)

You can set your API key via environment variable instead of the config file:

```bash
# Linux/macOS
export OPENAI_API_KEY="your-api-key-here"
python3 darkgpt.py

# Windows (Command Prompt)
set OPENAI_API_KEY=your-api-key-here
python darkgpt.py

# Windows (PowerShell)
$env:OPENAI_API_KEY="your-api-key-here"
python darkgpt.py
```

## Updating DarkGPT Lite

To update to the latest version:

1. **Using the built-in updater** (Recommended):
   - Select option "11. Check for Updates" from the main menu
   - Follow the prompts to download and install updates

2. **Manual update**:
   ```bash
   # Pull latest changes from GitHub
   git pull origin main
   
   # Update dependencies if needed
   pip install -r requirements.txt --upgrade
   ```

## Uninstalling

To remove DarkGPT Lite:

```bash
# Remove the virtual environment
rm -rf .darkgpt_venv

# Remove configuration (optional)
rm .darkgpt_config.json

# Remove the entire directory
cd ..
rm -rf DarkGPT-Lite
```

## Support and Documentation

- **README**: See [README.md](README.md) for feature overview
- **Disclaimer**: Read [DISCLAIMER.md](DISCLAIMER.md) for important legal information
- **Issues**: Report bugs on GitHub Issues
- **Updates**: Check GitHub for the latest version

## License

DarkGPT Lite is released under the MIT License. See [LICENSE](LICENSE) for details.

---

**⚠️ Important Reminder**: This tool is for educational and research purposes only. Use responsibly and in compliance with all applicable laws and OpenAI's Terms of Service.
