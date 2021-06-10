#!/usr/bin/zsh

### cdr
autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

# http://wada811.blogspot.com/2014/09/zsh-cdr.html
mkdir -p $HOME/.cache/shell/
zstyle ':completion:*' recent-dirs-insert both
zstyle ':chpwd:*' recent-dirs-max 1000
zstyle ':chpwd:*' recent-dirs-default true
zstyle ':chpwd:*' recent-dirs-file "$ZDOTDIR/.chpwd-recent-dirs"
zstyle ':chpwd:*' recent-dirs-pushd true




### selector
zstyle ":anyframe:selector:" use fzf

### keybind
bindkey '^xx' anyframe-widget-cdr # change directory
bindkey '^xk' anyframe-widget-kill # kill process
bindkey '^xf' anyframe-widget-insert-filename

bindkey '^xr' anyframe-widget-execute-history # search history and execute
bindkey '^xp' anyframe-widget-put-history # search history and put

bindkey '^xb' anyframe-widget-checkout-git-branch # change branch
bindkey '^xg' anyframe-widget-cd-ghq-repository
bindkey '^xi' anyframe-widget-insert-git-branch
bindkey '^xt' anyframe-widget-tmux-attach
bindkey '^zv' anyframe-widget-cd-ghq-repository


# anyframe-widget-execute-history 	コマンドライン履歴から選んで実行する
# anyframe-widget-put-history 	コマンドライン履歴から選んでコマンドラインに挿入する
# anyframe-widget-checkout-git-branch 	Gitブランチを切り替える
# anyframe-widget-insert-git-branch 	Gitブランチ名をコマンドラインに挿入する
# anyframe-widget-cdr 	過去に移動したことのあるディレクトリに移動する(cdrが必要)
# anyframe-widget-kill 	プロセスをkillする
# anyframe-widget-insert-filename 	ファイル名をコマンドラインに挿入する
# anyframe-widget-tmux-attach 	tmuxセッションを選んでアタッチする
# anyframe-widget-select-widget 	anyframe-widgetから選んでそれを実行する
