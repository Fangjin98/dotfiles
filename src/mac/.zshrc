export PATH=/opt/homebrew/bin:$PATH

eval "$(zoxide init zsh --cmd cd)"
eval "$(starship init zsh)"
[ -f ~/.config/.fzf.zsh ] && source ~/.config/.fzf.zsh

# alias ls='lsd'
alias ls='lsd --sort=extension --color=auto'
alias la='lsd -A'
alias ll='lsd -l'
alias lla='lsd -la'

# Git
alias ga='git add'
alias gb='git br' 
alias gd='git diff' 
alias gdc='git diff --cached' 
alias gl='git log'
alias gp='git pull' 
alias gs='git status' 
alias gst='git stash' 
alias gplo='git pull origin master'
alias gbv='git branch -vv' 
# Useful when working on a branch and 
# want to summarize changes against master
alias gdmno='git diff master  --name-only'
alias gpo='git push origin master'
alias gp='git pull'
alias gs='git status'
alias gd='git diff'
alias gr='git reflog'
alias glf='git ls-files'
alias pgp='proxyon && git pull'
alias pgpo='proxyon && git push origin master'

alias gogo='source ~/.zshrc'

# Proxy
function proxyon () {
  export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7891
  echo "HTTP Proxy on"
}

function proxyoff () {
  unset http_proxy
  unset https_proxy
  unset all_proxy
  echo "HTTP Proxy off"
}

# Git
function show-stash() {
    git stash show -p stash@{$1};
}

function stash-len() {
    git stash list | wc -l;
}

function drop-stash() {
    git stash drop stash@{$1};
}

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh