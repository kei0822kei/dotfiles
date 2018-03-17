# PROMPT="%{$fg[red]%}%m%{$reset_color%}:%{$fg[green]%}%c%{$reset_color%}$(git_super_status) %(!.#.$) "
# PROMPT='%{$fg[green]%}%m%(!.#.$)$(git_super_status) %{$reset_color%} %# '
PROMPT="%{$fg[green]%}%m%(!.#.$) %{$reset_color%}"
PROMPT2="%{$fg[green]%}%_> %{$reset_color%}"
SPROMPT="%{$fg[red]%}correct: %R -> %r [nyae]? %{$reset_color%}"
RPROMPT="%{$fg[cyan]%}[%~]%{$reset_color%}"

export WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

echo hoge
source $ZDOTDIR/rc/zsh-git-prompt.zsh
# an example prompt
PROMPT='%m%b$(git_super_status) %# '
# meskarune/.zshrc
if [[ ${TERM} == "linux" ]]; then
    GIT_PROMPT_CLEAN="%{$fg[green]%}-"
    GIT_PROMPT_AHEAD="%{$fg[yellow]%}^ NUM"
    GIT_PROMPT_BEHIND="%{$fg[yellow]%}v NUM"
    GIT_PROMPT_MERGING="%{$fg[magenta]%}Y"
    GIT_PROMPT_UNTRACKED="${fg_alert}!"
    GIT_PROMPT_MODIFIED="${fg_alert}+"
    GIT_PROMPT_STAGED="%{$fg[blue]%}="
else
    GIT_PROMPT_AHEAD="%{$fg[yellow]%}🡩 NUM "
    GIT_PROMPT_BEHIND="%{$fg[yellow]%}🡫 NUM "
    GIT_PROMPT_MERGING="%{$fg[magenta]%}🜉 "
    GIT_PROMPT_UNTRACKED="${fg_alert}✗ "
    GIT_PROMPT_MODIFIED="${fg_alert}➕ "
    GIT_PROMPT_STAGED="%{$fg[blue]%}🟓 "
fi
function parse_git_branch() {
    (git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD) 2> /dev/null
}
function parse_git_state() {
    local GIT_STATE=""
    local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
        if [ "$NUM_AHEAD" -gt 0 ]; then
            GIT_STATE=$GIT_STATE${GIT_PROMPT_AHEAD//NUM/$NUM_AHEAD}
        fi
    local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
        if [ "$NUM_BEHIND" -gt 0 ]; then
            GIT_STATE=$GIT_STATE${GIT_PROMPT_BEHIND//NUM/$NUM_BEHIND}
        fi
    local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
        if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
            GIT_STATE=$GIT_STATE$GIT_PROMPT_MERGING
        fi
    if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
        GIT_STATE=$GIT_STATE$GIT_PROMPT_UNTRACKED
    fi
    if ! git diff --quiet 2> /dev/null; then
        GIT_STATE=$GIT_STATE$GIT_PROMPT_MODIFIED
    fi
    if ! git diff --cached --quiet 2> /dev/null; then
        GIT_STATE=$GIT_STATE$GIT_PROMPT_STAGED
    fi
    if [ -z "$(git status --porcelain)" ]; then
        GIT_STATE=$GIT_STATE$GIT_PROMPT_CLEAN
    fi
    if [[ -n $GIT_STATE ]]; then
        echo "$GIT_STATE"
    fi
}

function git_prompt_string() {
    local git_where="$(parse_git_branch)"
    # [ -n "$git_where" ] && echo "[ %{$reset_color%}${git_where#(refs/heads/|tags/)} $(parse_git_state)%{$reset_color%} ] "
    [ -n "$git_where" ] && echo "[ $GIT_PROMPT_SYMBOL %{$reset_color%}${git_where#(refs/heads/|tags/)} $(parse_git_state)%{$reset_color%} ] "
}

PROMPT='%{$fg_bold[yellow]%}%n%{$reset_color%}@%{$fg_bold[magenta]%}%m %{$fg_bold[blue]%}%{$reset_color%} $(git_prompt_string)%#
>>>'
