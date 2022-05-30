install:
	sudo pacman -S --no-confirm exa docker jq docker-compose
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	curl -fsSL https://fnm.vercel.app/install | bash
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
	rm ~/.zshrc
	sudo ln -s ~/.config/zsh/.zshrc ~/.zshrc
	sudo ln -s ~/.config/zsh/.p10k.zsh ~/.p10k.zsh
