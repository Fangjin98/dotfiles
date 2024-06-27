export PATH=/opt/homebrew/bin:$PATH

eval "$(zoxide init zsh --cmd cd)"
eval "$(starship init zsh)"

[ -f ~/.config/.fzf.zsh ] && source ~/.config/.fzf.zsh

source $HOME/.config/zsh/alias
source $HOME/.config/zsh/functions
# source $HOME/.config/shell/git

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh