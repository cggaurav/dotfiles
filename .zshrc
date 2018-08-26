#!/usr/bin/env bash
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"
# muse
# ys

# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias bashrc="subl ~/.bashrc"
alias dm="docker-machine"
alias dc="docker-compose"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git ruby lighthouse)
plugins=(git last-working-dir redis-cli sublime bower sublime coffee brew git-flow github grunt node npm osx pip pow powder sublime rvm wd jsontools)
# plugins=(autojump bower brew cap cloudapp coffee compleat custom-aliases dirpersist docker encode64 extract fasd gem git git-flow github grunt history-substring-search node npm osx per-directory-history pip pow powder rails redis-cli ruby rvm ssh-agent sublime supervisor terminalapp tmux urltools vagrant vi-mode web-search wd)

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source $ZSH/oh-my-zsh.sh
source /Users/cggaurav/.rvm/scripts/rvm

# Customize to your needs...
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt

function settitle {
	title_lab=${PWD##*/}
	echo -ne "\e]2;$title_lab\a"
}

function cd() {
	builtin cd "$@" && settitle;
}


# Example aliases
alias zshrc="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pg_status="pg_ctl -D /usr/local/var/postgres status"
alias devconf="subl  ~/.teamocil"

# Remove Autocorrect
alias meteor='nocorrect meteor'
alias dev='itermocil'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/usr/local/sbin:$PATH"
settitle
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH='/usr/local/bin;usr/local/lib':$PATH
export ANDROID_HOME=/usr/local/opt/android-sdk
export SSL_CERT_FILE=/usr/local/etc/openssl/certs/cert.pem
export CURL_CA_BUNDLE=/usr/local/etc/openssl/cert.pem
export PGHOST=localhost
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"


[[ -s "$HOME/.bashrc" ]] && source "$HOME/.bashrc" # This loads BASHRC + other aliases

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
