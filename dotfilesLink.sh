#!/usr/bin/zsh

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
ln -sf "$GITDIR/zsh/rc" "$ZSHDIR/rc"
