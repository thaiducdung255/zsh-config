zsh-install:
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
	rm ~/.zshrc
	sudo ln -sf ~/.config/zsh/.zshrc ~/.zshrc
	sudo ln -sf ~/.config/zsh/.p10k.zsh ~/.p10k.zsh

font-install:
	sudo mkdir /usr/local/share/fonts
	sudo chmod 555 /usr/local/share/fonts
	sudo curl -L https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete%20Mono.ttf --output /usr/local/share/fonts/Fira\ Code\ Regular\ Nerd\ Font\ Complete\ Mono.ttf
	sudo chmod 444 /usr/local/share/fonts/Fira\ Code\ Regular\ Nerd\ Font\ Complete\ Mono.ttf

fnm-install:
	curl -fsSL https://fnm.vercel.app/install | bash

extra-packs-install:
	sudo pacman -S --noconfirm exa docker jq docker-compose unzip btop ibus go
	yay -S ibus-bamboo
	mkdir -p ~/Apps
	git clone https://github.com/devemio/docker-color-output.git ~/Apps/docker-color-output
	make build -C ~/Apps/docker-color-output
	sudo ln -fs ~/Apps/docker-color-output/bin/docker-color-output /usr/bin/docker-color-output

install:
	make zsh-install
	make font-install
	make extra-packs-install
	make fnm-install
