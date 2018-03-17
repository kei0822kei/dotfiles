#!/usr/bin/zsh
# ----- PROMPT -----
## PROMPT
PROMPT=$'[%*] → '
#PROMPT="%{^[[30;48;5;237m%}%{^[[38;5;178m%}%n@%m %{^[[30;48;5;067m%}%{^[[38;5;007m%}%~%{^[[0m%}"
#PROMPT="%{\e[30;48;5;237m%}%{\e[38;5;178m%}%n@%m %{\e[30;48;5;067m%}%{\e[38;5;007m%}%~%{^[[0m%}"
#PROMPT=$'%{\e[30;48;5;082m%}%{\e[38;5;001m%}[%n@%m]%{\e[0m%}'
## RPROMPT
#RPROMPT=$'`branch-status-check` %~' # %~はpwd
RPROMPT=$'`branch-status-check`'
setopt prompt_subst #表示毎にPROMPTで設定されている文字列を評価する

# {{{ methods for RPROMPT
# fg[color]表記と$reset_colorを使いたい
# @see https://wiki.archlinux.org/index.php/zsh
autoload -U colors; colors
function branch-status-check {
    local prefix branchname suffix
        # .gitの中だから除外
        if [[ "$PWD" =~ '/\.git(/.*)?$' ]]; then
            return
        fi
        branchname=`get-branch-name`
        # ブランチ名が無いので除外
        if [[ -z $branchname ]]; then
            return
        fi
        prefix=`get-branch-status` #色だけ返ってくる
        suffix='%{'${reset_color}'%}'
        #echo ${prefix}${branchname}${suffix}
        echo ${prefix}'\ue0a0 '${branchname}${suffix}
}
function get-branch-name {
    # gitディレクトリじゃない場合のエラーは捨てます
    echo `git rev-parse --abbrev-ref HEAD 2> /dev/null`
}
function get-branch-status {
    local res color
        output=`git status --short 2> /dev/null`
        if [ -z "$output" ]; then
            res=':' # status Clean
            color='%{'${fg[green]}'%}'
        elif [[ $output =~ "[\n]?\?\? " ]]; then
            res='?:' # Untracked
            color='%{'${fg[yellow]}'%}'
        elif [[ $output =~ "[\n]? M " ]]; then
            res='M:' # Modified
            color='%{'${fg[red]}'%}'
        else
            res='A:' # Added to commit
            color='%{'${fg[cyan]}'%}'
        fi
        # echo ${color}${res}'%{'${reset_color}'%}'
        echo ${color} # 色だけ返す
}
# }}}
#
