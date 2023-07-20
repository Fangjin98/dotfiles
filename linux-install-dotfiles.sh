mkdir -p $HOME/.config

ln -s "$(pwd)/src/common/.vimrc" "$HOME/.vimrc"
ln -s "$(pwd)/src/common/.vim" "$HOME/.vim"
ln -s "$(pwd)/src/common/.tmux.conf" "$HOME/.tmux.conf"
ln -s "$(pwd)/src/common/starship.toml" "$HOME/.config/starship.toml"

ln -s "$(pwd)/src/linux/.bashrc" "$HOME/.bashrc"
ln -s "$(pwd)/src/linux/.config/bash" "$HOME/.config/bash"
ln -s "$(pwd)/src/linux/p4-tools" "$HOME/p4-tools"
