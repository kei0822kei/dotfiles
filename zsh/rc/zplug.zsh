#!/usr/bin/env zsh

### set ZPLUG_HOME
export ZPLUG_HOME="$HOME/.mydot/zsh/.zplug"

### zplug install
if [ ! -e "$ZDOTDIR/.zplug" ]; then
  git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi

### zplug setting
source $ZPLUG_HOME/init.zsh

### install plugins
zplug "mollifier/anyframe"                    # like denite.nvim
# zplug "sorin-ionescu/prezto"
# zplug "b4b4r07/enhancd", at:v1                # at: はブランチとタグをサポートしている
zplug "junegunn/fzf-bin", from:gh-r, as:command, rename-to:"fzf"
zplug "zsh-users/zsh-autosuggestions"         # auto completion
zplug "zsh-users/zsh-completions"             # complete sub commands  ex) git <TAB>
zplug "zsh-users/zsh-syntax-highlighting"     # color
# zplug "zsh-users/zaw"     # color
# zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
# zplug "bhilburn/powerlevel9k", use:"powerlevel9k.zsh-theme", as:theme
#zplug "sindresorhus/pure"     # color
#zplug "zsh-prompt-powerline"

#zplug 'jhawthorn/fzy'

if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose

### setting of each plugin
source "$ZDOTDIR/rc/anyframe.zsh"
source "$ZDOTDIR/rc/autosuggestions.zsh"
source "$ZDOTDIR/rc/powerlevel9k.zsh"
# source "$ZDOTDIR/rc/prompt.zsh"
