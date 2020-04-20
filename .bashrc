
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

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

if [ -f /usr/local/opt/asdf/asdf.sh ]; then
  . /usr/local/opt/asdf/asdf.sh
fi

# Liquid Prompt {{{
  [[ $- = *i* ]] && source $HOME/.liquidprompt
# }}}
