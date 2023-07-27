echo "Install zsh..."

sudo apt-get install zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh-syntax-highlighting

echo "Link configs..."

mkdir -p $HOME/.config
./linux-install-dotfiles.sh

echo "Switch to zsh..."

chsh -s /bin/zsh

echo "Success!"