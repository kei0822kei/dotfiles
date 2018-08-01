#!/usr/bin/sh

################################################################################
# make shortcut
################################################################################

### setting variables
GITDIR="$HOME/Github/dotfiles"
MYDOTDIR="$HOME/.mydot"

### make setting directory
if [ ! -e "$MYDOTDIR" ]; then
  mkdir -p $MYDOTDIR
fi

### zsh
ZSHDIR="$MYDOTDIR/zsh"
if [ ! -e "$ZSHDIR" ]; then
  mkdir -p "$ZSHDIR"
fi
ln -sf "$GITDIR/zsh/zshenv" "$HOME/.zshenv"
ln -sf "$GITDIR/zsh/zshrc" "$ZSHDIR/.zshrc"
ln -sf "$GITDIR/zsh/zlogin" "$ZSHDIR/.zlogin"
ln -sf "$GITDIR/zsh/zlogout" "$ZSHDIR/.zlogout"
ln -sf "$GITDIR/zsh/zpreztorc" "$ZSHDIR/.zpreztorc"
# ln -sf "$GITDIR/zsh/rc" "$ZSHDIR/rc"

### tmux
if [ ! -e "$HOME/.tmux" ]; then
  mkdir $HOME/.tmux
fi
ln -sf "$GITDIR/tmux/tmux.conf" "$HOME/.tmux.conf"
ln -sf "$GITDIR/tmux/tmux-pane-border" "$HOME/.tmux/tmux-pane-border"
ln -sf "$GITDIR/tmux/get_battery_tmux" "$HOME/.tmux/get_battery_tmux"
ln -sf "$GITDIR/tmux/get_load_average_tmux" "$HOME/.tmux/get_load_average_tmux"
ln -sf "$GITDIR/tmux/get_ssid_tmux" "$HOME/.tmux/get_ssid_tmux"
ln -sf "$GITDIR/tmux/get_volume_tmux" "$HOME/.tmux/get_volume_tmux"

### nvim
NVIMDIR="$MYDOTDIR/nvim"
if [ ! -e "$NVIMDIR" ]; then
  mkdir -p "$NVIMDIR"
fi
ln -sf "$GITDIR/nvim/init.vim" "$NVIMDIR/init.vim"
ln -sf "$GITDIR/nvim/ftplugin" "$NVIMDIR/ftplugin"
ln -sf "$GITDIR/nvim/rc" "$NVIMDIR/rc"
ln -sf "$GITDIR/nvim/template" "$NVIMDIR/template"
ln -sf "$GITDIR/nvim/snippet" "$NVIMDIR/snippet"

### flake8
ln -sf "$GITDIR/lint/flake8" "$HOME/.flake8"

### latex
ln -sf "$GITGIR/latexmkrc" "$HOME/.latexmkrc"
