#!/bin/zsh

# Aliases
alias vim="nvim"
alias aurora="arch -x86_64 aurora"

web-ui-up() {
   cd ~/proj/app/service/web/web-ui
   docker-composer -d up web-proxy
   shadow-cljs watch app --config-merge '{:devtools {:preloads [hashp.core]}}'
}

restart-all() {
   echo Restarting all docker containers\n
   (cd ~/proj/app/util/docker && docker compose down && docker compose up -d --force-recreate)
   (cd ~/proj/app/service/web/web-ui && docker compose restart web-proxy)
}

# Path
PATH+=~/proj/app/bin
PATH+=/root/.local/bin
export PATH

# Specify default editor. Possible values: vim, nano, ed etc.
export EDITOR=vim

# Prompt
PROMPT='%F{51}%1d%f $'

# Enable autocomplete
autoload -Uz compinit && compinit

# Allow switching between java versions
switch-java() {
  export JAVA_HOME=$(/usr/libexec/java_home -v $1)
  java -version
}
switch-java 1.8 2> /dev/null

# Fix performance issues with lein
export GODEBUG=asyncpreemptoff=1

export VAULT_ADDR="https://vault.amperity.top:8200"
