# System
alias rst='exec zsh -l'
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
alias sshconf='$VISUAL $HOME/.ssh/config'
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

# tmux
if command_exists tmux ; then 
    alias t='tmux new-session -A -s '
    alias tk='tmux kill-session -t'
    alias tka='tmux kill-session -a'
fi

# just
if command_exists just ; then
    alias j='just'
fi

# tmuxinator
if command_exists tmuxinator ; then
    alias mux='tmuxinator'
fi

# docker
if command_exists docker ; then
    alias d='docker'
    alias dr='docker run'
    alias ds='docker start'
    alias dst='docker stop'
    alias drm='docker rm'
    alias dp='docker ps'
    alias dpa='docker ps -a'
    alias dpr='docker container prune'
    alias dl='docker logs'
    alias di='docker image'
    alias dipr='docker image prune'
    alias dipra='docker image prune -a'
    alias dils='docker image ls'
    alias dirm='docker image rm'
    alias dv='docker volume'
    alias dvpr='docker volume prune'
    alias dvpra='docker volume prune -a'
    alias dvls='docker volume ls'
    alias dvrm='docker volume rm'
    alias dc='docker compose'
    alias dcu='docker compose up'
    alias dcud='docker compose up -d'
    alias dcd='docker compose down'
    alias dcs='docker compose start'
    alias dcst='docker compose stop'
    alias dcl='docker compose logs'
fi

# sgpt
if command_exists sgpt ; then
    alias s='sgpt'
    alias ss='sgpt --shell'
    alias sr='sgpt --repl temp'
    alias sc='sgpt --code'
fi

# wsl
if uname -r |grep -q 'Microsoft' ; then
    source $XDG_CONFIG_HOME/1Password/config.zsh
    alias ollama='ollama.exe'
fi

