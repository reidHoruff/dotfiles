# Path to your oh-my-zsh installation.
export ZSH=/home/horuff/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="jreese"
#ZSH_THEME="blinks"
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/facebook/ops/scripts:/usr/facebook/scripts:/opt/local/bin:/usr/local/sbin:/usr/sbin:/sbin:/mnt/vol/engshare/svnroot/tfb/trunk/www/scripts/bin:/mnt/vol/engshare/admin/scripts/hg:/mnt/vol/engshare/admin/scripts/git:/mnt/vol/engshare/admin/scripts:/home/horuff/www/scripts/bin:/usr/facebook/ops/scripts:/usr/facebook/scripts:/usr/facebook/scripts:/usr/facebook/scripts/db:/usr/local/sbin:/usr/sbin:/sbin:/mnt/vol/engshare/svnroot/tfb/trunk/www/scripts/bin:/mnt/vol/engshare/admin/scripts/hg:/mnt/vol/engshare/admin/scripts/git:/mnt/vol/engshare/admin/scripts:/home/horuff/www/scripts/bin:/usr/local/sbin:/usr/sbin:/sbin:/mnt/vol/engshare/svnroot/tfb/trunk/www/scripts/bin:/mnt/vol/engshare/admin/scripts/hg:/mnt/vol/engshare/admin/scripts/git:/mnt/vol/engshare/admin/scripts:/home/horuff/www/scripts/bin:/home/horuff/bin:/usr/facebook/ops/scripts:/usr/facebook/scripts:/usr/local/sbin:/usr/sbin:/sbin:/mnt/vol/engshare/svnroot/tfb/trunk/www/scripts/bin:/mnt/vol/engshare/admin/scripts/hg:/mnt/vol/engshare/admin/scripts/git:/mnt/vol/engshare/admin/scripts:/home/horuff/www/scripts/bin:/usr/facebook/ops/scripts:/usr/facebook/scripts:/usr/facebook/scripts:/usr/facebook/scripts/db:/usr/local/sbin:/usr/sbin:/sbin:/mnt/vol/engshare/svnroot/tfb/trunk/www/scripts/bin:/mnt/vol/engshare/admin/scripts/hg:/mnt/vol/engshare/admin/scripts/git:/mnt/vol/engshare/admin/scripts:/home/horuff/www/scripts/bin:/usr/local/sbin:/usr/sbin:/sbin:/mnt/vol/engshare/svnroot/tfb/trunk/www/scripts/bin:/mnt/vol/engshare/admin/scripts/hg:/mnt/vol/engshare/admin/scripts/git:/mnt/vol/engshare/admin/scripts:/home/horuff/www/scripts/bin:/home/horuff/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

[[ -z "$ADMIN_SCRIPTS" ]] && export ADMIN_SCRIPTS='/mnt/vol/engshare/admin/scripts'
source "${ADMIN_SCRIPTS}/master.zshrc"
source "${ADMIN_SCRIPTS}/scm-prompt"


##These are good for dataswarm
alias com='git commit -a'
alias acom='git commit -a --amend'
alias sw='git checkout'
alias st='git status'
alias br='git branch'
alias ad='/mnt/vol/engshare/devtools/arcanist/bin/arc diff'
alias sm='/mnt/vol/engshare/devtools/arcanist/bin/arc amend; git svn dcommit'
alias cont='git rebase --continue'
alias del='sw master; git branch -D'
alias at='tmux attach'
alias tk='tmux kill-session'
alias tl='tmux le'
alias af='arc feature'

#When 'grepping' add color!
alias grep="grep --color"

#Choose your editor
EDITOR=vim
# Tip: make sure you 'export' your variables in order to have them show in env
export EDITOR
bindkey -v

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load zsh-autosuggestions.
source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh

# Enable autosuggestions automatically.
zle-line-init() {
  zle autosuggest-start
}
zle -N zle-line-init
bindkey '^f' vi-forward-blank-word

