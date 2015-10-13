#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias ez="vim ~/.zshrc"
alias rz="source ~/.zshrc"
alias ezp="vim ~/.zpreztorc"
alias rzp="source ~/.zpreztorc"

# hg aliases
alias hgs="hg summary && hg status"
alias hga="hg add"
alias hgc="hg commit"
alias hgca="hg commit --amend"
alias hgb="hg bookmarks"
alias hgco="hg checkout"

# git aliases
alias gst="git status"
alias gaa="git add --all"

# tmux aliases
alias tl="tmux ls"
alias tnew="tmux new -s"
alias ta="tmux a -t"
alias takeover="tmux detach -a"

# misc aliases
alias igssh="ig ssh paymahn-dev"
alias format="$ADMIN_SCRIPTS/clang-format -i"

# arc aliases
alias adp="arc diff --preview"

# editor
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'

# make stuff fast
export ADMIN_SCRIPTS='/mnt/vol/engshare/admin/scripts'
source "${ADMIN_SCRIPTS}/scm-prompt"

# some vnc stuff
export DISPLAY=:0
