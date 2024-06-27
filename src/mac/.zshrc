export PATH=/opt/homebrew/bin:$PATH

eval "$(zoxide init zsh --cmd cd)"

[ -f ~/.config/.fzf.zsh ] && source ~/.config/.fzf.zsh

source $HOME/.config/zsh/alias
source $HOME/.config/zsh/functions
source $HOME/.config/zsh/default
# source $HOME/.config/shell/git
