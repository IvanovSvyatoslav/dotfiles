# System
alias rst='exec zsh'
alias n='nvim'
alias c='clear'

# stow
alias stowr='stow -D . && stow .'

# Config files
alias zconf='$EDITOR $ZDOTDIR/.zshrc'
alias zprof='$EDITOR $ZDOTDIR/.zprofile'
alias zals='$EDITOR $ZDOTDIR/aliases.zsh'
alias zfuncs='$EDITOR $ZDOTDIR/functions.zsh'
alias vconf='$EDITOR ~/.vim/vimrc'
alias tconf='$EDITOR ~/.config/tmux/tmux.conf'

# eza
if command_exists eza ; then
    alias ls='eza'
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

