export EDITOR='vim'
export VISUAL="vim"

# History file location
export HISTFILE="$XDG_CACHE_HOME/zsh/.zsh_history"
# How many commands zsh will load to memory.
export HISTSIZE=100000
# How many commands history will save on file.
export SAVEHIST=100000

# Disable zsh_sessions
export SHELL_SESSIONS_DISABLE=1

# Added by Toolbox App
export PATH="$PATH:/Users/ivsv/Library/Application Support/JetBrains/Toolbox/scripts"

eval "$(/opt/homebrew/bin/brew shellenv)"
