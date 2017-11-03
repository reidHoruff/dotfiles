#export PS1="\[\033[38;5;166m\]\u\[$(tput sgr0)\]\[\033[38;5;242m\]@\[$(tput sgr0)\]\[\033[38;5;166m\]\H\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;4m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]\[\033[38;5;242m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
#export PS1="\[\033[38;5;172m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]"
#export PS1="\[$(tput bold)\]\[\033[38;5;39m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]"
#export PS1="\[\033[48;5;33m\]\w\[$(tput sgr0)\]\[\033[48;5;-1m\]\n\[$(tput sgr0)\]"
#export PS1="\[\033[38;5;232m\]\[\033[48;5;33m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\[\033[48;5;-1m\]\n\[$(tput sgr0)\]"
#export PS1="\[\033[38;5;232m\]\[\033[48;5;15m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\[\033[48;5;-1m\]\n\[$(tput sgr0)\]"
#export PS1="\[$(tput bold)\]\[\033[38;5;232m\]\[\033[48;5;39m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\[\033[48;5;-1m\]\n\[$(tput sgr0)\]"
#export PS1="\[\033[48;5;28m\]\u@\w\[$(tput sgr0)\]\[\033[48;5;-1m\]\n\[$(tput sgr0)\]"
#export PS1="\[\033[48;5;22m\]\u@\w\[$(tput sgr0)\]\[\033[48;5;-1m\]\n\[$(tput sgr0)\]"
#export PS1="\[[1m\]\[\033[38;5;232m\]\[\033[48;5;39m\]\w\[[m\]\[[m\]\[\033[38;5;15m\]\[\033[48;5;-1m\]\n\[[m\]"
#tty -s && export PS1="\[\033[48;5;55m\]\w\[$(tput sgr0)\]\[\033[48;5;-1m\]\n\[$(tput sgr0)\]"
tty -s && export PS1="\[\033[38;5;21m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]"

function co { git checkout $1; }
function vims { tmux split-window -h "vim $@"; }
function vs { tmux split-window -h; }
function sp { tmux split-window -v; }
function qq { exit; }
function fpp { grep -rinI -B 3 -A 3 --include="*.cc" --include="*.h" "$1" .;}
function fpy { grep -rinI -B 3 -A 3 --include="*.py" "$1" .;}
function s { source ~/.bash_conf.sh; echo sourced; }
function gs { git status; }


alias com='git commit -a'
alias acom='git commit -a --amend'
alias st='git status'
alias br='git branch'
alias cont='git rebase --continue'
alias gls='git branch'
alias ..="cd .."
alias ...="cd ../.."
alias parc='https_proxy=fwdproxy:8080 arc'
alias gl='git log --graph --full-history --all --color -n 30 --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias gla='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
#alias gl='git sl'
alias show='git show'
alias gundo='git reset --soft HEAD@{1}'
alias vb="vim ~/.bashrc"
alias gdb="gdb -q"
alias cgdb="cgdb -q"
alias gg="git grep -in"
alias e="vim"
alias m="make -j30"
alias la="ls -lah --group-directories-first"
alias weather="wget -O - http://wttr.in/seattle -q"
alias watch='watch -n1 '
alias my='cd ~/mysql/5.6/'
alias sc='cd ~/scripts/'
alias ls='ls --color'

#When 'grepping' add color!
alias grep="grep --color"
alias ch="vim ~/docs/cheat"

#Choose your editor
export EDITOR=vim

#vim mode
set -o vi
#better tab completion for bash
bind TAB:menu-complete

HISTSIZE=
HISTFILESIZE=

stty lnext ^q stop undef start undef

export GIT_SSL_CAINFO=//file-ca/shares/Installers/nginx.crt
