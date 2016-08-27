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
tty -s && export PS1="\[\033[48;5;89m\]\w\[$(tput sgr0)\]\[\033[48;5;-1m\]\n\[$(tput sgr0)\]"

function co { git checkout $1; }
function vims { tmux split-window -h "vim $@"; }
function vs { tmux split-window -h; }
function sp { tmux split-window -v; }
function qq { exit; }
function fpp { grep -rinI -B 3 -A 3 --include="*.cc" --include="*.h" "$1" .;}
function fpy { grep -rinI -B 3 -A 3 --include="*.py" "$1" .;}
function s { source ~/.bash_conf.sh; echo sourced; }
function gs { git status; }
function ins { sst_dump --command=scan --file="$1" --output_hex | less; }
LDB=ldb
function mins { $LDB --hex manifest_dump --path="$1" --verbose | less; }
function wal { $LDB dump_wal --walfile="$1" --header; }

function all_wal {
  for i in *.log; do
    echo $i
    wal $i
  done
}

function send {
  if [ -z $2 ] ; then
    echo $1 $SERVER:~
    scp $1 $SERVER:~
  else
    scp $1 $SERVER:$2
  fi
}

function grab {
  if [ -z $2 ] ; then
    scp $SERVER:$1 .
  else
    scp $SERVER:$1 $2
  fi
}

function exe {
  ssh $SERVER $@
}

SERVER_INDEX=0
function n {
  SERVER_INDEX=$((SERVER_INDEX+1))
  if [ "$SERVER_INDEX" -ge "${#SERVERS[@]}" ] ; then
    SERVER_INDEX=0
  fi
  SERVER=${SERVERS[$SERVER_INDEX]}
  echo $SERVER
}

function conf {
  exe mv .bashrc .bashrc.orig
  send ~/.bash_conf.remote.sh .bashrc
  send ~/.vimrc.remote .vimrc
  send ~/.tmux.conf.remote .tmux.conf
  send ~/.inputrc
}

function unconf {
  exe mv .bashrc.orig .bashrc
}

function con {
  ssh $SERVER;
  echo session complete
}

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
