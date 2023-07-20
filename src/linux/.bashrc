#!/usr/bin/env bash
# ${HOME}/.bashrc: executed by bash(1) for non-login shells.
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
. /usr/share/bash-completion/bash_completion

eval "$(starship init bash)"

# User Info
export USERNAME="Jin Fang"
export NICKNAME="Joey"

source $HOME/.config/bash/defaults
source $HOME/.config/bash/functions
source $HOME/.config/bash/exports
source $HOME/.config/bash/alias
source $HOME/.config/bash/git

source $HOME/p4-tools/set_sde.bash

# Welcome message
echo -ne "Hello, $NICKNAME! It's "; date '+%A, %B %-d %Y'
