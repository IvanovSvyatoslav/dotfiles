# zsh-vi-mode
source $ZDOTDIR/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
ZVM_VI_INSERT_ESCAPE_BINDKEY=jj
# The plugin will auto execute this zvm_after_init function
function zvm_after_init() {
    # fzf
    [ -f ~/.config/fzf/fzf.zsh ] && source ~/.config/fzf/fzf.zsh
}

# zsh-auto-suggestions
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-auto-completions
source $ZDOTDIR/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh 
zstyle ':autocomplete:*' delay 0.1  # seconds (float)

# fast-syntax-highlighting
source $ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
fast-theme XDG:catppuccin-mocha -q

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

setopt AUTO_CD
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_DUPS
setopt HIST_VERIFY
setopt APPENDHISTORY 

# Custom commands
source $ZDOTDIR/functions.zsh

# Custom aliases
source $ZDOTDIR/aliases.zsh

# brew installed completions
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# Completions
zstyle '*:compinit' arguments -d "$XDG_CACHE_HOME/zsh/.zcompdump"
# autoload -U compinit; compinit -d "$XDG_CACHE_HOME/zsh/.zcompdump"

# fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# zoxide
eval "$(zoxide init zsh)"

# bat
export BAT_THEME="Catppuccin-mocha"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# powerlevel10k
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

