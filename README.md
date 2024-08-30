# My dotfiles setup

> [!Warning]
> This repo is WIP

## TODO

- install zsh
- install docker
- install kitty

## Installation

git clone --recurse-submodules https://github.com/IvanovSvyatoslav/dotfiles.git ~/.dotfiles

## Components

- [Homebrew](https://brew.sh/). Package manager for macOS and Linux.
- [zsh](https://www.zsh.org/). Highly configurable shell.
  - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions). Fish-like autosuggestions for zsh.
  - [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete). Type-ahead completion for zsh.
  - [zsh-completions](https://github.com/zsh-users/zsh-completions). Additional completion definitions for zsh.
  - [powerlevel10k](https://github.com/romkatv/powerlevel10k). Zsh theme.
  - [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting). Syntax highlighting for Zsh.
    - [Catppuccin theme](https://github.com/catppuccin/zsh-fsh)
  - [zsh-vi-mode](https://github.com/jeffreytse/zsh-vi-mode). Vi-mode plugin for Zsh.
- [tmux](https://github.com/tmux/tmux/wiki). Terminal multiplexer.
  - [tmuxinator](https://github.com/tmuxinator/tmuxinator). Tool to manage tmux sessions.
  - [tpm](https://github.com/tmux-plugins/tpm). Tmux plugin manager.
  - [Catppuccin theme](https://github.com/catppuccin/tmux)
  - [tmux-continuum](https://github.com/tmux-plugins/tmux-continuum). Continuous saving of tmux environment.
  - [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect). Persists tmux environment across system restarts.
  - [tmux-yank](https://github.com/tmux-plugins/tmux-yank). Better copy for tmux.
  - [tmux-battery](https://github.com/tmux-plugins/tmux-battery). Battery percentage and status for tmux.
- [neovim](https://neovim.io/). Hyperextensible Vim-based text editor.
  - [pngpaste](https://github.com/jcsalterego/pngpaste). Paste PNG into files.
  - [pylatexenc](https://pypi.org/project/pylatexenc/). LaTeX to Unicode converter.
  - [Catppuccin theme](https://github.com/catppuccin/nvim)
  - [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) Navigate seamlessly between tmux panes and vim splits.
- [yazi](https://yazi-rs.github.io/). Terminal file manager.
  - [Catppuccin theme](https://github.com/catppuccin/yazi)
  - [unar](https://theunarchiver.com/command-line). Command-line unarchiving tool.
  - [poppler](https://poppler.freedesktop.org/). PDF rendering library.
  - [ffmpegthumbnailer](https://github.com/dirkvdb/ffmpegthumbnailer). Video thumbnailer.
  - [exiftool](https://exiftool.org/). Read and write meta information in files.
  - [miller](https://github.com/johnkerl/miller). Command-line CSV processor.
  - [ouch](https://github.com/ouch-org/ouch). Compression and decompression tool.
  - [glow](https://github.com/charmbracelet/glow). Markdown terminal viewer.
- [asdf](https://asdf-vm.com/). Version manager for multiple applications and languages.
  - [poetry](https://python-poetry.org/). Python dependency manager.
  - [pnpm](https://pnpm.io/). Node.js package manager.
  - [just](https://just.systems/man/en/). Task runner.
  - [act](https://nektosact.com/). Local GitHub Actions runner.
  - [python](https://www.python.org/). Programming language.
  - [nodejs](https://nodejs.org/). JavaScript runtime.
  - [.NET Core](https://dotnet.microsoft.com/). Cross-platform framework.
  - [java](https://www.java.com/). Programming language.
  - [maven](https://maven.apache.org/). Java build automation tool.
  - [go](https://golang.org/). Programming language.
- [zoxide](https://github.com/ajeetdsouza/zoxide). Smarter `cd` command.
- [eza](https://github.com/eza-community/eza). Better `ls` alternative.
- [bat](https://github.com/sharkdp/bat). Better `cat` alternative.
  - [Catppuccin theme](https://github.com/catppuccin/bat)
- [fzf](https://github.com/junegunn/fzf). Command-line fuzzy finder.
- [lazygit](https://github.com/jesseduffield/lazygit). Simple terminal UI for git commands.
  - [Catppuccin theme](https://github.com/catppuccin/lazygit)
  - [delta](https://github.com/dandavison/delta). Viewer for git and diff output.
    - [Catppuccin theme](https://github.com/catppuccin/delta)
- [tealdeer](https://github.com/dbrgn/tealdeer). CLI cheatsheet viewer.
- [shell-gpt](https://github.com/TheR1D/shell_gpt). Shell LLM interface.
- [kitty](https://sw.kovidgoyal.net/kitty/). Cross-platform, fast, feature-rich, GPU based terminal emulator.
  - [Catppuccin theme](https://github.com/catppuccin/kitty)
- [httpie](https://httpie.io/cli). Command-line HTTP client.
- [btop](https://github.com/sharkdp/bat). Better `htop` alternative.
  - [Catppuccin theme](https://github.com/catppuccin/btop)
- [ripgrep](https://github.com/BurntSushi/ripgrep). Line-oriented search tool.
- [fd](https://github.com/sharkdp/fd). Better find alternative.
- [pre-commit](https://pre-commit.com/). Framework for managing and maintaining multi-language pre-commit hooks.
- [ATAC](https://github.com/Julien-cpsn/ATAC). TUI API client.
- [jq](https://stedolan.github.io/jq/). Lightweight and flexible command-line JSON processor.
  - [jqp](https://github.com/noahgorstein/jqp). TUI playground for `jq`.
- [GNU Stow](https://www.gnu.org/software/stow/). Dotfiles symlink manager.
- [dust](https://github.com/bootandy/dust). Better `du` alternative.
- [Github cli](https://cli.github.com/). GitHub’s official command line tool.
  - [gh-dash](https://github.com/dlvhdr/gh-dash). GitHub CLI dashboard.
- [lazydocker](https://github.com/jesseduffield/lazydocker). Simple terminal UI for Docker.
- [rip](https://github.com/nivekuil/rip). Safe and ergonomic alternative to `rm`.
- [hexyl](https://github.com/sharkdp/hexyl). Hex terminal viewer.
- [asciinema](https://docs.asciinema.org). Terminal session recorder.
- [tokei](https://github.com/XAMPPRocky/tokei). Program that counts LOC.
- [midnight-commander](https://midnight-commander.org/). Visual file manager.
  - [Catppuccin theme](https://github.com/catppuccin/mc)
- [navi](https://github.com/denisidoro/navi). Interactive cheatsheet tool for the command-line.
- [topgrade](https://github.com/topgrade-rs/topgrade). Tool to upgrade all your packages.
- [GitKraken CLI](https://www.gitkraken.com/cli). Command-line interface for GitKraken.
- [wrk](https://github.com/wg/wrk). HTTP benchmarking tool.
- [sd](https://github.com/chmln/sd). Simple, fast, and safe `sed` alternative.
- [git-lfs](https://git-lfs.com/). Git Large File Storage utilities.
- [lnav](https://lnav.org/downloads). Log file navigator.
- [dive](https://github.com/wagoodman/dive). Tool for exploring docker image, layer contents, and discovering ways to shrink the size of your Docker/OCI image.
- [thefuck](https://github.com/nvbn/thefuck). Tool to correct errors in previous console commands.

## Problems

Install Script:

- install zsh on linux
- pngpaste: macOS is required for this software.
  Error: pngpaste: An unsatisfied requirement failed this build.
- ./.dotfiles/scripts/install.sh: line 235: pip: command not found
- clone with submodules
- Authentication failed for 'https://github.com/DreamMaoMao/keyjump.yazi.git/'
- Install on linux --cask 1password-cli
  --cask gitkraken-cli
- missing or unsuitable terminal: xterm-kitty
- While downloading ffmpeg:
  Already downloaded: /home/ivsv/.cache/Homebrew/downloads/21c83d367c6459449acbeea36db5c99baba65353c7f09b8cfe34a98977783291--binutils-2.42.bottle_manifest.json
  ==> Pouring binutils--2.42.x86_64_linux.bottle.tar.gz
  Error: no implicit conversion of false into String
- brew_bin is empty:
  zsh: no such file or directory: /asdf
