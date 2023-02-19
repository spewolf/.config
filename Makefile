run: clean
	-ln -s "${PWD}/zshrc" ~/.zshrc
	-ln -s "${PWD}/lein" ~/.lein
	-ln -s "${PWD}/tmux.conf" ~/.tmux.conf
	-ln -s "${PWD}/alacritty" ~/.config/alacritty
	-ln -s "${PWD}/amperity" ~/.config/amperity
	-ln -s "${PWD}/clj-kondo" ~/.config/clj-kondo
	-ln -s "${PWD}/fish" ~/.config/fish
	-ln -s "${PWD}/nvim" ~/.config/nvim
	-ln -s "${PWD}/shadow-cljs" ~/.config/shadow-cljs
	-ln -s "${PWD}/tmuxp" ~/.config/tmuxp
	-ln -s "${PWD}/kitty" ~/.config/kitty
clean:
	-unlink ~/.zshrc
	-unlink ~/.lein
	-unlink ~/.tmux.conf
	-unlink ~/.config/alacritty
	-unlink ~/.config/amperity
	-unlink ~/.config/clj-kondo
	-unlink ~/.config/fish
	-unlink ~/.config/nvim
	-unlink ~/.config/shadow-cljs
	-unlink ~/.config/tmuxp
	-unlink ~/.config/kitty
