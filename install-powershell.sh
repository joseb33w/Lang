#!/bin/bash
# PowerShell Installation Script for macOS
# Based on: https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-macos

echo "Installing PowerShell on macOS..."
echo ""

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "Homebrew is not installed. Installing Homebrew first..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing PowerShell using Homebrew..."
brew install --cask powershell

echo ""
echo "Verifying installation..."
if command -v pwsh &> /dev/null; then
    echo "✓ PowerShell installed successfully!"
    pwsh --version
else
    echo "PowerShell installation completed. You may need to restart your terminal or run:"
    echo "  source ~/.zshrc"
    echo ""
    echo "Then verify with: pwsh --version"
fi

