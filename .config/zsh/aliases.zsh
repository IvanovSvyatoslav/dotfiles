# System
alias rst='exec zsh'
alias n='nvim'
alias cl='clear'

# Config files
alias zconf='$EDITOR $ZDOTDIR/.zshrc'
alias zprof='$EDITOR $ZDOTDIR/.zprofile'
alias zals='$EDITOR $ZDOTDIR/aliases.zsh'
alias zenv='$EDITOR $ZDOTDIR/.zshenv'
alias zfuncs='$EDITOR $ZDOTDIR/functions.zsh'
alias vconf='$EDITOR ~/.vim/vimrc'
alias tconf='$EDITOR $XDG_CONFIG_HOME/tmux/tmux.conf'

# wget
# Always try to (c)ontinue getting a partially-downloaded file
alias wget="wget -c --hsts-file $XDG_CACHE_HOME/wget/hsts"

# cp
# Always copy contents of directories (r)ecursively and explain (v) what was done
alias cp='cp -rv'

# mv
# Explain (v) what was done when moving a file
alias mv='mv -v'

# mkdir
# Create any non-existent (p)arent directories and explain (v) what was done
alias mkdir='mkdir -pv'

# stow
alias stowr='stow -D . && stow .'

# git
alias gc='git clone'
alias gsa='git submodule add'

# lazygit
if command_exists lazygit ; then
    alias lg='lazygit'
fi

# eza
if command_exists eza ; then
    alias ls='eza --git'
    alias tree='eza --long --tree --level=3'
    alias treea='eza --all --long --tree --level=3'
    alias l='eza --oneline'
    alias la='eza --oneline --all'
fi

# ls
alias ll='ls -lh'
alias lsa='ls -lah'

# zoxide
if command_exists zoxide ; then
    alias cd='z'
fi

# fzf
if command_exists fzf ; then
    if command_exists bat ; then
        alias fzfp='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'
    fi
fi

# fd
if command_exists fd ; then
    if command_exists bat ; then
        alias fdp='fd … -X bat'
    fi
fi

# cat
if command_exists bat ; then
    alias cat='bat --paging=never --style=plain'
fi

# bat
if command_exists bat ; then
    alias -g -- -h='-h 2>&1 | bat --language=help --style=plain'
    alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
fi

