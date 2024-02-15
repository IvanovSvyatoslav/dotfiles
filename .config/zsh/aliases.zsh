# System
alias rst='exec zsh'

# stow
alias stowr='stow -D . && stow .'

# Config files
alias zshconf='$EDITOR $ZDOTDIR/.zshrc'
alias zshprofile='$EDITOR $ZDOTDIR/.zprofile'
alias zshals='$EDITOR $ZDOTDIR/aliases.zsh'
alias zshfuncs='$EDITOR $ZDOTDIR/functions.zsh'
alias vimconf='$EDITOR ~/.vim/vimrc'
alias tmuxconf='$EDITOR ~/.config/tmux/tmux.conf'

# ls
if command_exists eza ; then
    alias ls='eza'
fi

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

