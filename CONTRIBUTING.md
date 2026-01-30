# Contributing to DarkGPT Lite

Thank you for your interest in contributing to DarkGPT Lite! This guide will help you get started.

## Getting Started

### Running the Project Locally

1. **Clone the repository**:
   ```bash
   git clone https://github.com/InfoSecREDD/DarkGPT-Lite.git
   cd DarkGPT-Lite
   ```

2. **Run the application**:
   ```bash
   # Using the convenience script
   ./run.sh        # Linux/macOS
   run.bat         # Windows
   
   # Or directly with Python
   python3 darkgpt.py
   ```

3. **First-time setup**:
   - The script will automatically create a virtual environment
   - Dependencies will be installed automatically
   - You'll be prompted to enter your OpenAI API key
   - Configuration will be saved in `.darkgpt_config.json`

### Development Environment

If you're developing and want to manually manage the virtual environment:

```bash
# Create virtual environment
python3 -m venv .darkgpt_venv

# Activate virtual environment
source .darkgpt_venv/bin/activate  # Linux/macOS
.darkgpt_venv\Scripts\activate     # Windows

# Install dependencies
pip install -r requirements.txt

# Run the script
python darkgpt.py
```

## Project Structure

```
DarkGPT-Lite/
├── darkgpt.py              # Main application script
├── requirements.txt        # Python dependencies
├── run.sh                  # Convenience script (Linux/macOS)
├── run.bat                 # Convenience script (Windows)
├── README.md              # Project overview
├── SETUP.md               # Detailed setup guide
├── DISCLAIMER.md          # Legal disclaimer
├── LICENSE                # MIT License
├── .gitignore             # Git ignore rules
├── .darkgpt_venv/         # Virtual environment (auto-created)
├── .darkgpt_config.json   # User configuration (auto-created)
└── projects/              # User-created projects (auto-created)
```

## Making Changes

### Before Making Changes

1. **Create a new branch**:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes** to the code

3. **Test your changes**:
   ```bash
   # Run the application to ensure it still works
   python3 darkgpt.py
   
   # Test specific features you modified
   ```

### Code Style

- Follow PEP 8 style guidelines for Python code
- Use meaningful variable and function names
- Add comments for complex logic
- Keep functions focused and single-purpose

### Testing Your Changes

Before submitting a pull request:

1. **Test the application**:
   - Run the main script and verify it starts correctly
   - Test the features you modified
   - Test on different platforms if possible (Linux/macOS/Windows)

2. **Check for errors**:
   - Look for Python exceptions or warnings
   - Verify dependencies are correctly specified in `requirements.txt`

3. **Test with a fresh setup**:
   ```bash
   # Remove existing virtual environment
   rm -rf .darkgpt_venv
   
   # Remove existing config
   rm .darkgpt_config.json
   
   # Run the script fresh
   python3 darkgpt.py
   ```

## Submitting Changes

### Pull Request Process

1. **Update documentation** if needed:
   - Update README.md for new features
   - Update SETUP.md for setup changes
   - Add comments to complex code

2. **Commit your changes**:
   ```bash
   git add .
   git commit -m "Brief description of your changes"
   ```

3. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```

4. **Create a Pull Request**:
   - Go to the GitHub repository
   - Click "New Pull Request"
   - Select your branch
   - Describe your changes clearly
   - Reference any related issues

### Pull Request Guidelines

- **Clear description**: Explain what your PR does and why
- **One feature per PR**: Keep PRs focused and manageable
- **Test your changes**: Ensure everything works before submitting
- **Update docs**: Keep documentation in sync with code changes

## Reporting Issues

### Bug Reports

When reporting bugs, please include:

1. **Description**: What happened and what you expected
2. **Steps to reproduce**: How to trigger the bug
3. **Environment**:
   - Operating system (Linux/macOS/Windows)
   - Python version (`python3 --version`)
   - DarkGPT version (shown in the application)
4. **Error messages**: Any error messages or stack traces
5. **Logs**: Relevant output or log files

### Feature Requests

When requesting features:

1. **Use case**: Describe the problem or need
2. **Proposed solution**: Your idea for implementing it
3. **Alternatives**: Other solutions you considered
4. **Benefits**: How this helps users

## Code of Conduct

- Be respectful and considerate
- Welcome newcomers and help them get started
- Focus on constructive feedback
- Assume good intentions

## Security

**IMPORTANT**: Never commit:
- API keys or credentials
- Personal information
- `.darkgpt_config.json` file
- Sensitive project data

These are already in `.gitignore`, but be careful when adding files.

If you discover a security vulnerability:
1. **Do not** open a public issue
2. Contact the maintainers privately
3. Allow time for the issue to be addressed

## Questions?

- **Setup issues**: See [SETUP.md](SETUP.md)
- **General questions**: Open a GitHub Discussion
- **Bugs**: Open a GitHub Issue
- **Documentation**: Check [README.md](README.md)

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for contributing to DarkGPT Lite! 🎉
