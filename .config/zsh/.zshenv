# Custom paths
export ZPLUGDIR="$ZDOTDIR/plugins"

# zsh-autocomplete setting for ubuntu
skip_global_compinit=1

export POWERLEVEL9K_CONFIG_FILE=$XDG_CONFIG_HOME/p10k/config.zsh

# less history
export LESSHISTFILE="$XDG_CACHE_HOME/less/.lesshst"

# tldr
export TEALDEER_CONFIG_DIR="$XDG_CONFIG_HOME/tealdeer"

# asdf
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/asdfrc"
export ASDF_DATA_DIR="$XDG_DATA_HOME/asdf"

# pypoetry
export POETRY_CONFIG_DIR="$XDG_CONFIG_HOME/pypoetry"

# 1passwrd ssh agent

if [ "$(uname)" = "Darwin" ]; then
  # Mac OS X platform
  export SSH_AUTH_SOCK=~/.1password/agent.sock
elif [ "$(expr substr $(uname -s) 1 5)" = "Linux" ]; then
  # GNU/Linux platform (wsl)
  alias ssh='ssh.exe'
  alias ssh-add='ssh-add.exe'
fi


# Expiremental, setting language to english manually
# LANG=en_US
