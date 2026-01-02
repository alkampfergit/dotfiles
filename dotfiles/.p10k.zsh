# Powerlevel10k configuration for .NET developers
# Generated with p10k configure, then customized

# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

typeset -g POWERLEVEL9K_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL='\uE0B6'
typeset -g POWERLEVEL9K_LEFT_PROMPT_SEGMENTS=(
    'dir'                   # Current directory
    'vcs'                   # Git status
    'dotnet'                # .NET version
    'status'                # Exit code
)

typeset -g POWERLEVEL9K_RIGHT_PROMPT_SEGMENTS=(
    'dir_writable'
    'ram'
    'time'
)

# Directory
typeset -g POWERLEVEL9K_DIR_SHORTENED_FOREGROUND=208
typeset -g POWERLEVEL9K_DIR_SHORTENED_PATH=1
typeset -g POWERLEVEL9K_DIR_ANCHOR_BOLD=true

# Git
typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'

# .NET - The star feature!
typeset -g POWERLEVEL9K_DOTNET_VERSION_PROJECT_ONLY=true
typeset -g POWERLEVEL9K_DOTNET_BACKGROUND='blue'
typeset -g POWERLEVEL9K_DOTNET_FOREGROUND='white'
typeset -g POWERLEVEL9K_DOTNET_SYMBOL='🔧 '

# Status
typeset -g POWERLEVEL9K_STATUS_OK_FOREGROUND=green
typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND=red

# Right prompt
typeset -g POWERLEVEL9K_RAM_BACKGROUND='black'
typeset -g POWERLEVEL9K_RAM_FOREGROUND='cyan'
typeset -g POWERLEVEL9K_TIME_BACKGROUND='black'
typeset -g POWERLEVEL9K_TIME_FOREGROUND='white'

# Prompt character
typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=true
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_FOREGROUND=green
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_FOREGROUND=red
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_MODE_FOREGROUND=blue
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VICMD_MODE_FOREGROUND=yellow

# Lean style (compact)
typeset -g POWERLEVEL9K_LEAN_PACKAGE_MANAGER=false
typeset -g POWERLEVEL9K_LEAN_EXTRACT_COLOR=208
