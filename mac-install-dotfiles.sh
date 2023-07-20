mkdir -p $HOME/.config

ln -s "$(PWD)/src/common/.vimrc" "$HOME/.vimrc"
ln -s "$(PWD)/src/mac/.zshrc" "$HOME/.zshrc"

ln -s "$(PWD)/src/mac/.config/yabai" "$HOME/.config/yabai"
ln -s "$(PWD)/src/mac/.config/skhd" "$HOME/.config/skhd"
ln -s "$(PWD)/src/mac/.config/sketchybar" "$HOME/.config/sketchybar"
