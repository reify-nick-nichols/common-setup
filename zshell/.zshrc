export ZSH_DISABLE_COMPFIX=true
# For brew, at least
export PATH=/usr/local/bin:$PATH

# NVM Stuff
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# JVM Stuff
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Shell History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
setopt share_history
setopt hist_ignore_space
setopt hist_expire_dups_first

# Path to your oh-my-zsh installation.
export ZSH="/Users/nnichols/.oh-my-zsh"

ZSH_THEME="agnoster"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
plugins=(git aws colored-man-pages command-not-found)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set personal aliases

prompt_context(){}

alias greps='grep -rHni --color'
alias stat='git status'
alias status='git status'
alias shove='git push -f'
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/nnichols/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
