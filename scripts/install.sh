# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install tools without dependencies
brew install
# https://docs.asciinema.org/getting-started/
asciinema
# https://github.com/sharkdp/bat
bat
# https://github.com/aristocratos/btop
btop
# https://github.com/bootandy/dust
dust
# https://github.com/eza-community/eza
eza
# https://github.com/sharkdp/fd
fd
# https://github.com/junegunn/fzf
fzf
# https://cli.github.com/
gh
# https://github.com/dandavison/delta
git-delta
# https://git-lfs.com/
git-lfs
# https://github.com/charmbracelet/glow
glow
# https://github.com/sharkdp/hexyl
hexyl
# https://github.com/httpie/cli
httpie
# https://jqlang.github.io/jq/
jq
# https://github.com/jesseduffield/lazygit
jesseduffield/lazygit/lazygit
# https://midnight-commander.org/
midnight-commander
# https://github.com/denisidoro/navi
navi
# https://github.com/romkatv/powerlevel10k
powerlevel10k
# https://github.com/BurntSushi/ripgrep
ripgrep
# https://www.gnu.org/software/stow/
stow
# https://github.com/dbrgn/tealdeer
tealdeer
# https://github.com/nvbn/thefuck
thefuck
# https://github.com/tmux/tmux/wiki
tmux
# https://github.com/tmuxinator/tmuxinator
tmuxinator
# https://github.com/XAMPPRocky/tokei
tokei
# https://github.com/topgrade-rs/topgrade
topgrade
# https://www.gnu.org/software/wget/
wget
# https://github.com/ajeetdsouza/zoxide
zoxide

# Yazi install
brew install \
	unar \
	poppler \
	ffmpegthumbnailer \
	exiftool \
	miller \
	yazi

# Setup private files
cp ~/.dotfiles/.config/git/config.example ~/.dotfiles/.config/git/config
cp ~/.dotfiles/.config/zsh/personal.zsh.example ~/.dotfiles/.config/zsh/personal.zsh

# Run stow
cd ~/.dotfiles
stow .

# Clean completions cache
rm -f $XDG_CACHE_HOME/.zcompdump
compinit

# Asdf

# Install asdf
# https://asdf-vm.com/guide/getting-started.html
brew install coreutils curl git asdf

# Asdf Node.js plugin
# https://github.com/asdf-vm/asdf-nodejs/
brew install gpg gawk
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest

# Asdf Python plugin
# https://github.com/asdf-community/asdf-python
asdf plugin-add python
asdf install python latest
asdf global python latest

# Asdf Java plugin
# https://github.com/halcyon/asdf-java?tab=readme-ov-file
asdf plugin-add java https://github.com/halcyon/asdf-java.git
sdf install java latest:temurin-21
echo "You should set global java version by yourself"

# Asdf Maven plugin
# https://github.com/halcyon/asdf-maven
asdf plugin-add maven
asdf install maven latest
asdf global maven latest
