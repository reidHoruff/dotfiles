#export PS1="\[\033[38;5;166m\]\u\[$(tput sgr0)\]\[\033[38;5;242m\]@\[$(tput sgr0)\]\[\033[38;5;166m\]\H\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;4m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]\[\033[38;5;242m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
#export PS1="\[\033[38;5;172m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]"
export PS1="\[$(tput bold)\]\[\033[38;5;39m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]"

function new { git checkout -b $1; up; }
function co { git checkout $1; }
function vims { tmux split-window -h "vim $@"; }
function vs { tmux split-window -h; }
function sp { tmux split-window -v; }
function qq { exit; }
function fpp { grep -rinI -B 3 -A 3 --include="*.cc" --include="*.h" "$1" .;}
function s { source ~/.bashrc; echo sourced; }
function gs { git status; }
function ins { sst_dump --command=scan --file="$1" --output_hex | less; }
function mins { ldb --hex manifest_dump --path="$1" --verbose | less; }

alias com='git commit -a'
alias acom='git commit -a --amend'
alias st='git status'
alias br='git branch'
alias cont='git rebase --continue'
alias af='arc feature'
alias ..="cd .."
alias ...="cd ../.."
alias parc='https_proxy=fwdproxy:8080 arc'
alias gl='git log --graph --full-history --all --color -n 30 --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias show='git show'
alias gs='git status'
alias gundo='git reset --soft HEAD@{1}'
alias vb="vim ~/.bashrc"
alias gdb="cgdb -q"
alias cgdb="cgdb -q"
alias gg="git grep -in"
alias yum="sudo yum"
alias e="vim"

#When 'grepping' add color!
alias grep="grep --color"

#Choose your editor
export EDITOR=vim

#vim mode
set -o vi
#better tab completion for bash
bind TAB:menu-complete
