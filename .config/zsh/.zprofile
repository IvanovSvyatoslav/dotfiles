export EDITOR="$HOME/bin/nvim-lazyvim"
export VISUAL="$HOME/bin/nvim-lazyvim"

# Disable zsh_sessions
export SHELL_SESSIONS_DISABLE=1

# Added by Toolbox App
export PATH="$PATH:/Users/ivsv/Library/Application Support/JetBrains/Toolbox/scripts"

eval "$(/opt/homebrew/bin/brew shellenv)"

# bat
export BAT_THEME="Catppuccin-mocha"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

