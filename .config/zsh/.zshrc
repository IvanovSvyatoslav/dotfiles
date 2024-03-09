# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History file location
export HISTFILE="$XDG_CACHE_HOME/zsh/history"
# How many commands zsh will load to memory.
export HISTSIZE=100000
# How many commands history will save on file.
export SAVEHIST=100000

# History improvements
setopt AUTO_CD
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_DUPS
setopt HIST_VERIFY
setopt APPENDHISTORY 

# Personal aliases and commands
source $ZDOTDIR/personal.zsh

# Custom commands
source $ZDOTDIR/functions.zsh

# Custom aliases
source $ZDOTDIR/aliases.zsh

# brew installed completions
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
# zsh-completions plugin
FPATH="${ZPLUGDIR}/zsh-completions/src:${FPATH}"
# Custom completions
FPATH="${ZDOTDIR}/completions:${FPATH}"

# zsh-vi-mode
source $ZPLUGDIR/zsh-vi-mode/zsh-vi-mode.plugin.zsh
ZVM_VI_INSERT_ESCAPE_BINDKEY=jj
# The plugin will auto execute this zvm_after_init function
function zvm_after_init() {
    # fzf
    [ -f $XDG_CONFIG_HOME/fzf/fzf.zsh ] && source $XDG_CONFIG_HOME/fzf/fzf.zsh
}

# zsh-auto-suggestions
source $ZPLUGDIR/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-auto-completions
source $ZPLUGDIR/zsh-autocomplete/zsh-autocomplete.plugin.zsh 
zstyle ':autocomplete:*' add-space '*'

# zoxide
eval "$(zoxide init zsh)"

# navi
eval "$(navi widget zsh)"

# fast-syntax-highlighting
source $ZPLUGDIR/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fast-theme XDG:catppuccin-mocha -q

# powerlevel10k
source $ZPLUGDIR/powerlevel10k/powerlevel10k.zsh-theme

# Completions
zstyle '*:compinit' arguments -d "$XDG_CACHE_HOME/zsh/.zcompdump"
# autoload -U compinit; compinit -d "$XDG_CACHE_HOME/zsh/.zcompdump"

# To customize prompt, run `p10k configure` or edit ~/.config/p10k/config.zsh.
[[ ! -f $XDG_CONFIG_HOME/p10k/config.zsh ]] || source $XDG_CONFIG_HOME/p10k/config.zsh

# thefuck
eval $(thefuck --alias)

# asdf
. $(brew --prefix)/opt/asdf/libexec/asdf.sh
. $ASDF_DATA_DIR/plugins/java/set-java-home.zsh
. $ASDF_DATA_DIR/plugins/dotnet-core/set-dotnet-home.zsh
. $ASDF_DATA_DIR/plugins/golang/set-env.zsh
export ASDF_GOLANG_MOD_VERSION_ENABLED=true

