source $HOME/.config/shell/alias
source $HOME/.config/shell/functions

## Dependencies

source ~/.config/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# homebrew
export PATH=/opt/homebrew/bin:$PATH

# starship
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh --cmd cd)"

# fzf
[ -f ~/.config/.fzf.zsh ] && source ~/.config/.fzf.zsh


# conda
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