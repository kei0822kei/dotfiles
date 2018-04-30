#!/usr/bin/sh

################################################################################
# make shortcut
################################################################################

### setting variables
GITDIR="$HOME/Github/dotfiles"
MYDOTDIR="$HOME/.mydot"
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
# ln -sf "$GITDIR/zsh/rc" "$ZSHDIR/rc"

### tmux
ln -sf "$GITDIR/tmux/tmux.conf" "$HOME/.tmux.conf"

### nvim
NVIMDIR="$MYDOTDIR/nvim"
if [ ! -e "$NVIMDIR" ]; then
  mkdir -p "$NVIMDIR"
fi
ln -sf "$GITDIR/nvim/init.vim" "$NVIMDIR/init.vim"
ln -sf "$GITDIR/nvim/ftplugin" "$NVIMDIR/ftplugin"
ln -sf "$GITDIR/nvim/rc" "$NVIMDIR/rc"
ln -sf "$GITDIR/nvim/template" "$NVIMDIR/template"

### flake8
ln -sf "$GITDIR/lint/flake8" "$HOME/.flake8"

