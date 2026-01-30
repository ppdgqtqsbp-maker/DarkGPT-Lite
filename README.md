# DarkGPT Lite

<p align="center">
  <img src="https://raw.githubusercontent.com/InfoSecREDD/DarkGPT-Lite/main/darkgpt_logo.png" alt="DarkGPT Lite Logo" width="300" />
</p>

<p align="center">
  <strong>Unrestricted AI Assistant for Cybersecurity Research</strong>
</p>

<p align="center">
  <a href="#quick-start">Quick Start</a> •
  <a href="#features">Features</a> •
  <a href="#installation">Installation</a> •
  <a href="#usage">Usage</a> •
  <a href="#updates">Updates</a> •
  <a href="#disclaimer">Disclaimer</a>
</p>

## Quick Start

Get DarkGPT Lite running in 3 simple steps:

```bash
# 1. Clone the repository
git clone https://github.com/InfoSecREDD/DarkGPT-Lite.git
cd DarkGPT-Lite

# 2. Run the script (it will auto-setup everything)
python3 darkgpt.py

# Or use the convenience script:
./run.sh        # Linux/macOS
run.bat         # Windows

# 3. Enter your OpenAI API key when prompted
```

That's it! The script automatically:
- ✅ Creates a virtual environment
- ✅ Installs all dependencies
- ✅ Saves your configuration

**Need more help?** See [SETUP.md](SETUP.md) for detailed setup instructions and troubleshooting.

**Don't have an OpenAI API key?** Get one at https://platform.openai.com/api-keys

## Features

DarkGPT Lite is a specialized CLI tool providing unrestricted conversations with AI for cybersecurity research purposes:

*(NOTE: To make this clear, this is based off of "Prompt Engineering", when this prompt breaks fully. There is a handful of new prompts I have and will rotate them accordingly.)*

- **Unrestricted AI Conversations**: Direct access to AI without typical safety filters
- **Project Management**: Create, edit, and manage code projects within the application
- **Virtual Environment Handling**: Automatic setup and management of Python dependencies
- **Visual UI**: Enhanced terminal interface with animations and color-coded menus
- **Multiple AI Models**: Support for various OpenAI models with easy switching
- **Automatic Updates**: Built-in system to check for and apply updates

## Installation

### Prerequisites

- Python 3.9+ installed
- Internet connection
- OpenAI API key ([Get one here](https://platform.openai.com/api-keys))

### Quick Setup

**Option 1: Using convenience scripts**

```bash
# Linux/macOS
./run.sh

# Windows
run.bat
```

**Option 2: Direct Python execution**

```bash
# Clone this repository
git clone https://github.com/InfoSecREDD/DarkGPT-Lite.git
cd DarkGPT-Lite

# Run the script
python3 darkgpt.py
```

DarkGPT Lite will:
- Automatically create a virtual environment in `.darkgpt_venv/`
- Install all required dependencies
- Prompt you for your OpenAI API key on first run
- Save your configuration in `.darkgpt_config.json`

**Need help?** Check [SETUP.md](SETUP.md) for:
- Detailed installation instructions
- Platform-specific guides
- Troubleshooting tips
- Security best practices

## Usage

### Main Menu Navigation

After startup, you'll see the main menu with the following options:

1. **Chat with DarkGPT Lite**: Start an interactive AI conversation
2. **Create New Project**: Generate a new software project with AI
3. **List Projects**: View your existing projects
4. **Edit Project**: Modify files in an existing project
5. **Delete Project**: Remove a project
6. **Run Project**: Execute a Python project
7. **Change API Key**: Update your OpenAI API key
8. **Edit System Message**: Customize the AI's behavior
9. **Change AI Model**: Switch between different AI models
10. **Reset Settings**: Restore default configuration
11. **Check for Updates**: Update to the latest version

### AI Chat

In chat mode, you can have unrestricted conversations with the AI assistant:
- Type your queries and receive responses
- Enter `exit` to return to the main menu
- All conversations respect the system message settings

### Project Management

DarkGPT Lite can help create and manage code projects:
- Generate complete code projects based on your description
- Edit existing project files with AI assistance
- Manage project dependencies automatically
- Execute projects within the application

## Customization

### Changing AI Models

DarkGPT Lite supports several AI models:
- `gpt-3.5-turbo`: Default model, balanced performance and cost
- `gpt-3.5-turbo-16k`: Extended context window
- `gpt-4-turbo`: Enhanced capabilities (higher cost)
- `gpt-4-1106-preview`: Most advanced model (highest cost)
- Custom model names

### System Message

The system message defines how the AI responds to queries. You can modify it to:
- Change the AI's personality
- Focus on specific areas of expertise
- Adjust the response style

## Updates

DarkGPT Lite includes an update system to stay current with the latest features:

1. Select "Check for Updates" from the main menu
2. The tool will compare your version with the latest on GitHub
3. If an update is available, you can download and apply it automatically

## Disclaimer

**⚠️ For Educational and Research Purposes Only ⚠️**

This tool is provided for cybersecurity educational and research purposes only. Users assume all responsibility for how they use this software.

Please read the full [DISCLAIMER.md](DISCLAIMER.md) before using this tool.

**⚠️ API Key Warning ⚠️**

Using this tool with your OpenAI API key carries significant risks. Misuse can result in:
- Immediate termination of your OpenAI account
- Permanent ban from all OpenAI services
- Financial liability for unauthorized use
- Potential legal consequences

You are solely responsible for all activities conducted with your API key.

## License

DarkGPT Lite is released under the MIT License. See the LICENSE file for details.

## Author

Created by [InfoSecREDD](https://github.com/InfoSecREDD)

---

<p align="center">
  Made with ❤️ for the cybersecurity research community
</p> 
