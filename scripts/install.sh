# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

if [ "$(uname)" = "Darwin" ]; then
	# Mac OS X platform
	eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ "$(expr substr $(uname -s) 1 5)" = "Linux" ]; then
	# GNU/Linux platform
	sudo apt-get install build-essential procps curl file git
	eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

brew postinstall gcc

# Install stow
# https://www.gnu.org/software/stow/
brew install stow

# Run stow
cd ~/.dotfiles
stow .

# Install tools without dependencies
# https://docs.asciinema.org/getting-started/
# https://github.com/sharkdp/bat
# https://github.com/aristocratos/btop
# https://github.com/bootandy/dust
# https://github.com/eza-community/eza
# https://github.com/sharkdp/fd
# https://github.com/junegunn/fzf
# https://cli.github.com/
# https://github.com/dandavison/delta
# https://git-lfs.com/
# https://github.com/charmbracelet/glow
# https://github.com/sharkdp/hexyl
# https://github.com/httpie/cli
# https://jqlang.github.io/jq/
# https://github.com/jesseduffield/lazygit
# https://midnight-commander.org/
# https://github.com/denisidoro/navi
# https://github.com/romkatv/powerlevel10k
# https://github.com/BurntSushi/ripgrep
# https://github.com/dbrgn/tealdeer
# https://github.com/nvbn/thefuck
# https://github.com/tmux/tmux/wiki
# https://github.com/tmuxinator/tmuxinator
# https://github.com/XAMPPRocky/tokei
# https://github.com/topgrade-rs/topgrade
# https://www.gnu.org/software/wget/
# https://github.com/ajeetdsouza/zoxide
# https://www.gitkraken.com/cli
# https://github.com/noahgorstein/jqp
# https://nektosact.com
# https://github.com/casey/just
# https://github.com/pypa/pipx
# https://pnpm.io/
brew install \
	asciinema \
	bat \
	btop \
	dust \
	eza \
	fd \
	fzf \
	gh \
	git-delta \
	git-lfs \
	glow \
	hexyl \
	httpie \
	jq \
	midnight-commander \
	navi \
	powerlevel10k \
	ripgrep \
	tealdeer \
	thefuck \
	tmux \
	tmuxinator \
	tokei \
	topgrade \
	wget \
	zoxide \
	act \
	just \
	pipx \
	pnpm

brew install --cask gitkraken-cli
brew install jesseduffield/lazygit/lazygit
brew install noahgorstein/tap/jqp

BREW_BIN=$(brew --prefix)/bin

# pipx postinstall
$BREW_BIN/pipx ensurepath

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
$BREW_BIN/asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
$BREW_BIN/asdf install nodejs latest
$BREW_BIN/asdf global nodejs latest

# Asdf Python plugin
# https://github.com/asdf-community/asdf-python
$BREW_BIN/asdf plugin-add python
$BREW_BIN/asdf install python latest
$BREW_BIN/asdf global python latest

# Asdf Java plugin
# https://github.com/halcyon/asdf-java
$BREW_BIN/asdf plugin-add java https://github.com/halcyon/asdf-java.git
$BREW_BIN/asdf install java latest:temurin-21
echo "You should set global java version by yourself"

# Asdf Maven plugin
# https://github.com/halcyon/asdf-maven
$BREW_BIN/asdf plugin-add maven
$BREW_BIN/asdf install maven latest
$BREW_BIN/asdf global maven latest

# Asdf .Net Core
# https://github.com/emersonsoares/asdf-dotnet-core
$BREW_BIN/asdf plugin-add dotnet-core https://github.com/emersonsoares/asdf-dotnet-core.git
$BREW_BIN/asdf install dotnet-core latest
$BREW_BIN/asdf global dotnet-core latest

# Asdf golang
# https://github.com/asdf-community/asdf-golang
$BREW_BIN/asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
$BREW_BIN/asdf install golang latest
$BREW_BIN/asdf global golang latest

# Asdf rust
# https://github.com/code-lever/asdf-rust
$BREW_BIN/asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
$BREW_BIN/asdf install rust latest
$BREW_BIN/asdf global rust latest

# Asdf just
# https://github.com/olofvndrhr/asdf-just
$BREW_BIN/asdf plugin-add just https://github.com/olofvndrhr/asdf-just.git
$BREW_BIN/asdf install just latest
$BREW_BIN/asdf global just latest

# Asdf act
# https://github.com/grimoh/asdf-act
$BREW_BIN/asdf plugin-add act https://github.com/grimoh/asdf-act.git
$BREW_BIN/asdf install act latest
$BREW_BIN/asdf global act latest

# Asdf poetry
# https://github.com/asdf-community/asdf-poetry
$BREW_BIN/asdf plugin-add poetry https://github.com/asdf-community/asdf-poetry.git
$BREW_BIN/asdf install poetry latest
$BREW_BIN/asdf global poetry latest

# Asdf pnpm
# https://github.com/jonathanmorley/asdf-pnpm
$BREW_BIN/asdf plugin-add pnpm
$BREW_BIN/asdf install pnpm latest
$BREW_BIN/asdf global pnpm latest
