
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# durdn/cfg related commands {{{
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# }}

# Git Shortcuts {{{
alias gs='git status'
alias gfap='git fetch --all --prune'
alias gp='git pull'
alias gsp='git stash pop'
gssa() { git add . && git stash save $1; }
# }}}

alias dk='docker'
alias dkc='docker-compose'

# OSX specific config {{{
if [ $(uname) == "Darwin" ]; then
  export TERM=xterm-256color

  #aliases {{{
  alias ls='ls -G'
  alias ll='ls -ltrG'
  alias la='ls -alG'
  alias less='less -R'
  alias fnd='open -a Finder'
  
  alias utcdttm='date -u +"%Y-%m-%dT%H:%M:%SZ"'
  # }}}
  
  export PATH="/usr/local/sbin:$PATH"

  export GPG_TTY=$(tty)

fi
# }}}

if [ -f /usr/local/opt/asdf/libexec/asdf.sh ]; then
  . /usr/local/opt/asdf/libexec/asdf.sh
fi

# Liquid Prompt {{{
  LP_ENABLE_SVN=0
  LP_ENABLE_FOSSIL=0
  LP_ENABLE_BZR=0
  LP_ENABLE_BATT=0
  LP_ENABLE_LOAD=0
  LP_USER_ALWAYS=0
  LP_HOSTNAME_ALWAYS=0
  LP_PATH_KEEP=0
  LP_PATH_LENGTH=20
  
#  [[ $- = *i* ]] && source $HOME/.liquidprompt
  if [ -f /usr/local/share/liquidprompt ]; then
    . /usr/local/share/liquidprompt
  fi
# }}}

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

