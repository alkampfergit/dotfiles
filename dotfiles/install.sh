#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "🔥 Setting up Powerlevel10k .NET Developer Prompt..."

# Install Powerlevel10k (if not exists)
if [[ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]]; then
    echo "📦 Installing Powerlevel10k..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
        "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
    git clone https://github.com/romkatv/powerlevel10k-media.git \
        "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k-media"
fi

# Install essential plugins
PLUGINS_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins"
mkdir -p "$PLUGINS_DIR"

[[ ! -d "$PLUGINS_DIR/zsh-autosuggestions" ]] && \
    git clone https://github.com/zsh-users/zsh-autosuggestions "$PLUGINS_DIR/zsh-autosuggestions"

[[ ! -d "$PLUGINS_DIR/zsh-syntax-highlighting" ]] && \
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$PLUGINS_DIR/zsh-syntax-highlighting"

# Create symlinks
echo "🔗 Creating symlinks..."
ln -sf "$SCRIPT_DIR/.zshrc" ~/.zshrc
ln -sf "$SCRIPT_DIR/.p10k.zsh" ~/.p10k.zsh

echo "✅ Setup complete!"
echo ""
echo "🔄 Open a new terminal or run: source ~/.zshrc"
echo ""
echo "💡 First run will launch p10k configure wizard - choose 'Lean' style"
