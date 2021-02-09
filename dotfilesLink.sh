#!/usr/bin/env sh

################################################################################
# make shortcut
################################################################################

### setting variables
GITDIR="$HOME/src/github.com/kei0822kei/dotfiles"
MYDOTDIR="$HOME/.mydot"

### make setting directory
if [ ! -e "$MYDOTDIR" ]; then
  mkdir -p $MYDOTDIR
fi

### bin
# ln -nsf "$GITDIR/bin/"* "$HOME/bin"

### zsh
ZSHDIR="$MYDOTDIR/zsh"
if [ ! -e "$ZSHDIR" ]; then
  mkdir -p "$ZSHDIR"
fi
ln -nsf "$GITDIR/zsh/zshenv" "$HOME/.zshenv"
ln -nsf "$GITDIR/zsh/zshrc" "$ZSHDIR/.zshrc"
# ln -nsf "$GITDIR/zsh/zlogin" "$ZSHDIR/.zlogin"
# ln -nsf "$GITDIR/zsh/zlogout" "$ZSHDIR/.zlogout"
# ln -nsf "$GITDIR/zsh/zpreztorc" "$ZSHDIR/.zpreztorc"
ln -nsf "$GITDIR/zsh/rc" "$ZSHDIR/rc"

### tmux
if [ ! -e "$HOME/.tmux" ]; then
  mkdir $HOME/.tmux
fi
ln -nsf "$GITDIR/tmux/tmux.conf" "$HOME/.tmux.conf"
# ln -nsf "$GITDIR/tmux/tmux-pane-border" "$HOME/.tmux/tmux-pane-border"
# ln -nsf "$GITDIR/tmux/get_battery_tmux" "$HOME/.tmux/get_battery_tmux"
# ln -nsf "$GITDIR/tmux/get_load_average_tmux" "$HOME/.tmux/get_load_average_tmux"
# ln -nsf "$GITDIR/tmux/get_ssid_tmux" "$HOME/.tmux/get_ssid_tmux"
# ln -nsf "$GITDIR/tmux/get_volume_tmux" "$HOME/.tmux/get_volume_tmux"
# ln -nsf "$GITDIR/tmux/ssh-change-profile.bash" "$HOME/.tmux/ssh-change-profile.bash"

### nvim
NVIMDIR="$MYDOTDIR/nvim"
if [ ! -e "$NVIMDIR" ]; then
  mkdir -p "$NVIMDIR"
fi
ln -nsf "$GITDIR/nvim/init.vim" "$NVIMDIR/init.vim"
ln -nsf "$GITDIR/nvim/cheatsheet.txt" "$NVIMDIR/cheatsheet.txt"
ln -nsf "$GITDIR/nvim/rc" "$NVIMDIR/rc"
ln -nsf "$GITDIR/nvim/coc-settings.json" "$NVIMDIR/coc-settings.json"
ln -nsf "$GITDIR/nvim/vimspector.json" "$HOME/.vimspector.json"
ln -nsf "$GITDIR/nvim/toml" "$NVIMDIR/toml"
ln -nsf "$GITDIR/nvim/snippet" "$NVIMDIR/snippet"
if [ ! -e "$NVIMDIR/bookmark.vim" ]; then
  cp "$GITDIR/nvim/bookmark-template.vim" "$NVIMDIR/bookmark.vim"
fi

### flake8
ln -nsf "$GITDIR/lint/flake8" "$HOME.flake8"

### pylint
ln -nsf "$GITDIR/lint/pylintrc" "$HOME/.pylintrc"

### latex
# ln -nsf "$GITDIR/latex/latexmkrc" "$HOME/.latexmkrc"

### git
ln -nsf "$GITDIR/git/gitconfig" "$HOME/.gitconfig"

### ssh
# ln -nsf "$GITDIR/ssh/`hostname`" "$HOME/.ssh/config"

### pypi
ln -nsf "$GITDIR/python/pypirc" "$HOME/.pypirc"
