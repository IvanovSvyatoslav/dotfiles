# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/opt/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/opt/homebrew/opt/fzf/bin"
fi

BREW_OPT=$(brew --prefix)/opt
# Auto-completion
# ---------------
source "$BREW_OPT/fzf/shell/completion.zsh"

# Key bindings
# ------------
source "$BREW_OPT/fzf/shell/key-bindings.zsh"
