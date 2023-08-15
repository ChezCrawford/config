if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

export SBT_CREDENTIALS=$HOME/.sbt/credentials

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
