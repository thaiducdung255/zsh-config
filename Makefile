install:
	sudo pacman -S --noconfirm exa docker jq docker-compose unzip btop ibus
	yay -S ibus-bamboo
	curl -fsSL https://fnm.vercel.app/install | bash
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
	rm ~/.zshrc
	sudo ln -sf ~/.config/zsh/.zshrc ~/.zshrc
	sudo ln -sf ~/.config/zsh/.p10k.zsh ~/.p10k.zsh
	sudo mkdir /usr/local/share/fonts
	sudo chmod 555 /usr/local/share/fonts
	sudo curl -L https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono.ttf --output /usr/local/share/fonts/Fira\ Code\ Regular\ Nerd\ Font\ Complete\ Mono.ttf
	sudo chmod 444 /usr/local/share/fonts/Fira\ Code\ Regular\ Nerd\ Font\ Complete\ Mono.ttf
