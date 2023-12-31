# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export USERNAME="Jin Fang"
export NICKNAME="Joey"

source $HOME/.config/zsh/alias
source $HOME/.config/zsh/functions
source $HOME/.config/zsh/default

source $HOME/p4-tools/set_sde.bash
source $HOME/p4-tools/functions

# Welcome message
echo -ne "Hello, $NICKNAME! It's "; date '+%A, %B %-d %Y'