# System
alias rst='exec zsh'
alias cl='clear'

# Config files
alias zconf='$VISUAL $ZDOTDIR/.zshrc'
alias zprof='$VISUAL $ZDOTDIR/.zprofile'
alias zals='$VISUAL $ZDOTDIR/aliases.zsh'
alias zenv='$VISUAL $ZDOTDIR/.zshenv'
alias zfuncs='$VISUAL $ZDOTDIR/functions.zsh'
alias tconf='$VISUAL $XDG_CONFIG_HOME/tmux/tmux.conf'
alias lvconf='$VISUAL $XDG_CONFIG_HOME/nvim-lazyvim'
alias kvconf='$VISUAL $XDG_CONFIG_HOME/nvim-kickstart'
alias ovconf='$VISUAL $XDG_CONFIG_HOME/nvim-obsidian'
alias sshconf='$VISUAL $HOME/.ssh/'
alias instsc='$VISUAL ~/.dotfiles/scripts/install.sh'

# wget
# Always try to (c)ontinue getting a partially-downloaded file
alias wget="wget -c --hsts-file $XDG_CACHE_HOME/wget/hsts"

# cp
# Always copy contents of directories (r)ecursively and explain (v) what was done
alias cp='cp -rv'

# mv
# Explain (v) what was done when moving a file
alias mv='mv -v'

# rm
# Explain (v) what was done when removing a file
alias rm='rm -v'

# mkdir
# Create any non-existent (p)arent directories and explain (v) what was done
alias mkdir='mkdir -pv'

# stow
alias stowr='stow -D . && stow .'

# git
alias gcl='git clone'
alias gsa='git submodule add'
alias gst='git status'
alias gl='git log'

# lazygit
if command_exists lazygit ; then
    alias lg='lazygit'
fi

# neovim
if command_exists nvim ; then
    alias lv='~/bin/nvim-lazyvim'
    alias kv='~/bin/nvim-kickstart'
    alias ov='~/bin/nvim-obsidian'
    alias nvim='lv'
    alias vim='nvim'
fi

# eza
if command_exists eza ; then
    alias ls='eza --git --icons'
    alias tree='eza --long --tree --level=3 --icons'
    alias treea='eza --all --long --tree --level=3 --icons'
    alias l='eza --oneline --icons'
    alias la='eza --oneline --all --icons'
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
        alias fzfp='fzf --preview "bat --color=always --style=numbers,changes --line-range=:500 {}"'
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

# thefuck
if command_exists fuck ; then
    alias f='fuck'
fi

# tmuxinator
if command_exists tmuxinator ; then
    alias mux='tmuxinator'
fi
