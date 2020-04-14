
# durdn/cfg related commands {{{
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# }}}

# OSX specific config {{{
if [ $(uname) == "Darwin" ]; then
  export TERM=xterm-256color

  #aliases {{{
  alias ls='ls -G'
  alias ll='ls -ltrG'
  alias la='ls -alG'
  alias less='less -R'
  alias fnd='open -a Finder'
  # }}}
fi
# }}}
