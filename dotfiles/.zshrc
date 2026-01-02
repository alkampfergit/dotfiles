#!/usr/bin/env zsh

# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Essential plugins only
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Essential .NET aliases (your workflow)
alias dnb='dotnet build'
alias dnt='dotnet test'
alias dnr='dotnet run'
alias dnw='dotnet watch'
alias dnp='dotnet publish -c Release'

# Git essentials
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'

# Reload
alias reload='source ~/.zshrc'

# Load Powerlevel10k theme
if [[ ! -f "$HOME/.p10k.zsh" ]]; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  git clone https://github.com/romkatv/powerlevel10k-media.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k-media
  echo "Please re-run this script to set up Powerlevel10k."
  return
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
