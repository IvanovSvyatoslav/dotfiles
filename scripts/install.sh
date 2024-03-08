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

# Install stow
# https://www.gnu.org/software/stow/
brew install stow

# Run stow
cd ~/.dotfiles
stow .

# reload config
exec zsh

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
	jesseduffield/lazygit/lazygit \
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
	gitkraken-cli \
	noahgorstein/tap/jqp \
	act \
	just \
	pipx \
	pnpm

# reload config
exec zsh

# pipx postinstall
pipx ensurepath

# Yazi install
brew install \
	unar \
	poppler \
	ffmpegthumbnailer \
	exiftool \
	miller \
	yazi

# reload config
exec zsh

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

# reload config
exec zsh

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
# https://github.com/halcyon/asdf-java
asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf install java latest:temurin-21
echo "You should set global java version by yourself"

# Asdf Maven plugin
# https://github.com/halcyon/asdf-maven
asdf plugin-add maven
asdf install maven latest
asdf global maven latest

# Asdf .Net Core
# https://github.com/emersonsoares/asdf-dotnet-core
asdf plugin-add dotnet-core https://github.com/emersonsoares/asdf-dotnet-core.git
asdf install dotnet-core latest
asdf global dotnet-core latest

# Asdf golang
# https://github.com/asdf-community/asdf-golang
asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
asdf install golang latest
asdf global golang latest

# Asdf rust
# https://github.com/code-lever/asdf-rust
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf install rust latest
asdf global rust latest

# Asdf just
# https://github.com/olofvndrhr/asdf-just
asdf plugin-add just https://github.com/olofvndrhr/asdf-just.git
asdf install just latest
asdf global just latest

# Asdf act
# https://github.com/grimoh/asdf-act
asdf plugin-add act https://github.com/grimoh/asdf-act.git
asdf install act latest
asdf global act latest

# Asdf poetry
# https://github.com/asdf-community/asdf-poetry
asdf plugin-add poetry https://github.com/asdf-community/asdf-poetry.git
asdf install poetry latest
asdf global poetry latest

# Asdf pnpm
# https://github.com/jonathanmorley/asdf-pnpm
asdf plugin-add pnpm
asdf install pnpm latest
asdf global pnpm latest
