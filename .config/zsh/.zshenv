# Custom paths
export ZPLUGDIR="$ZDOTDIR/plugins"

# brew installed completions
# zsh-autocomplete setting for ubuntu
skip_global_compinit=1

export POWERLEVEL9K_CONFIG_FILE=$XDG_CONFIG_HOME/p10k/config.zsh

# less history
export LESSHISTFILE="$XDG_CACHE_HOME/less/.lesshst"

# tldr
export TEALDEER_CONFIG_DIR="$XDG_CONFIG_HOME/tealdeer"

# asdf
export ASDF_CONFIG_FILE="$XDG_CONFIG_HOME/asdf/.asdfrc"
export ASDF_DATA_DIR="$XDG_CACHE_HOME/asdf"

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
# zsh-completions plugin
FPATH="${ZPLUGDIR}/zsh-completions/src:${FPATH}"

