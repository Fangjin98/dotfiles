sudo apt-get install zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh-syntax-highlighting

echo "Link Configuration Files..."

./linux-install-dotfiles.sh

echo "Success!"