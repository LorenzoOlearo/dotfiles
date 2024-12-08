# dotfiles

This repository contains configuration files (dotfiles) for various tools and
applications I use or I have used. I use thes dotfiles across all of my
different machines to keep a consistent development environment.

## Current Setup

The follwing are the tools with their dotfiles that I'm currently using:
- **Neovim**: `.config/nvim/`
- **Tmux**: `.config/tmux/tmux.conf`
- **Kitty**: `.config/kitty/kitty.conf`
- **Zsh**: `.zshrc`
- **Doom Emacs**: `.doom.d/`

### Dependencies
External Requirements:
- Basic utils: `git`, `make`, `unzip`, C compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- [Lazygit](https://github.com/jesseduffield/lazygit/tree/master): optional but
recommended for git management
- [Tree-sitter](https://tree-sitter.github.io/tree-sitter/): syntax highlighting

### Install Script
To install the current setup, you can run the `install.sh` script. The script
will copy the configuration files to their respective directories. Note that it
will not install the required dependecies and this depends on the OS you are
using.

> Please review the install script before running it.
```sh
sh install.sh
```


# Stuff I used to use

The following are a series of tools that I have used and configured in the past
but I have since then stoppen using, for the sake of keeping a record of my
past configurations, I have kept their dotfiles in this repository:
- **i3-gaps**
- **Polybar**
- **Vim**
- **Urxvt**
- **Rofi**
- **Bash**

![Screenshot](screenshot.png)
wallpaper: [Flickr Project Apollo
Archive](https://www.flickr.com/photos/projectapolloarchive/21472225870/in/album-72157658601662068/)
