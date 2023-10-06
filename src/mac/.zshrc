export PATH=/opt/homebrew/bin:$PATH

eval "$(zoxide init zsh --cmd cd)"

[ -f ~/.config/.fzf.zsh ] && source ~/.config/.fzf.zsh

__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup

source $HOME/.config/zsh/alias
source $HOME/.config/zsh/functions
source $HOME/.config/zsh/default
# source $HOME/.config/shell/git
