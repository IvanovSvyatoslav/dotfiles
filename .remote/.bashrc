export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=10000
shopt -s histappend
shopt -s cmdhist

# Always copy contents of directories (r)ecursively and explain (v) what was done
alias cp='cp -rv'
# List contents with colors for file types, (A)lmost all hidden files (without . and ..), in (C)olumns, with class indicators (F)
alias ls='ls --color=auto -ACF'
# List contents with colors for file types, (a)ll hidden entries (including . and ..), use (l)ong listing format, with class indicators (F)
alias ll='ls --color=auto -alF'

# Explain (v) what was done when moving a file
alias mv='mv -v'
# Create any non-existent (p)arent directories and explain (v) what was done
alias mkdir='mkdir -pv'
# Always try to (c)ontinue getting a partially-downloaded file
alias wget='wget -c'

# Find command in history
alias gh='history|grep'

# Count files
alias count='find . -type f | wc -l'

# Show contents of the directory after changing to it
function cd () {
    builtin cd "$1"
    ls -ACF
}

# Colour codes are cumbersome, so let's name them
txtcyn='\[\e[0;96m\]' # Cyan
txtpur='\[\e[0;35m\]' # Purple
txtwht='\[\e[0;37m\]' # White
txtrst='\[\e[0m\]'    # Text Reset

# Which (C)olour for what part of the prompt?
pathC="${txtcyn}"
userC="${txtpur}"
pointerC="${txtwht}"
normalC="${txtrst}" 

export PS1="${pathC}\w${normalC}\n${userC}\u ${pointerC}\$${normalC} "
