ln -s "$(PWD)/src/common/.vimrc" "$HOME/.vimrc"
ln -s "$(PWD)/src/common/.vim" "$HOME/.vim"
ln -s "$(PWD)/src/common/.tmux.conf" "$HOME/.tmux.conf"
ln -s "$(PWD)/src/common/starship.toml" "$HOME/.config/starship.toml"

# zsh config
ln -s "$(PWD)/src/common/.config/zsh" "$HOME/.config/zsh"
ln -s "$(PWD)/src/mac/.zshrc" "$HOME/.zshrc"

# macos only
ln -s "$(PWD)/src/mac/.config/yabai" "$HOME/.config/yabai"
ln -s "$(PWD)/src/mac/.config/skhd" "$HOME/.config/skhd"
ln -s "$(PWD)/src/mac/.config/sketchybar" "$HOME/.config/sketchybar"