# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
zsh-install:
	rm -rf ~/.oh-my-zsh/plugins/zsh-autosuggestions
	rm -rf ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
	rm -rf ~/.oh-my-zsh/themes/powerlevel10k
	git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
	rm ~/.zshrc
	sudo ln -sf ~/.config/zsh/.zshrc ~/.zshrc
	sudo mkdir -p ~/.cargo
	sudo ln -sf ~/.config/zsh/.zshenv ~/.cargo/env
	sudo ln -sf ~/.config/zsh/.p10k.zsh ~/.p10k.zsh

font-install:
	sudo mkdir -p /usr/local/share/fonts
	sudo chmod 555 /usr/local/share/fonts
	sudo curl -O https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/FiraCodeNerdFontMono-Regular.ttf --output /usr/share/fonts/TTF/FiraCodeNerdFontMono-Regular.ttf
	sudo chmod 444 /usr/share/fonts/TTF/FiraCodeNerdFontMono-Regular.ttf

fnm-install:
	sudo pacman -S --noconfirm unzip
	curl -fsSL https://fnm.vercel.app/install | bash
	fnm install 20
	npm i -g @commitlint/{cli,config-conventional}
	echo "module.exports = {extends: ['@commitlint/config-conventional']}" > ~/commitlint.config.js

extra-packs-install:
	rm -rf ~/Apps/docker-color-output
	sudo pacman -S --noconfirm exa docker jq docker-compose unzip btop ibus go xorg-xev pavucontrol pipewire-audio pipewire-pulse zip
	# yay -S --noconfirm ibus-bamboo
	mkdir -p ~/Apps
	git clone https://github.com/devemio/docker-color-output.git ~/Apps/docker-color-output
	make build -C ~/Apps/docker-color-output
	sudo ln -fs ~/Apps/docker-color-output/bin/docker-color-output /usr/bin/docker-color-output

install:
	make zsh-install
	# make font-install
	make fnm-install
	make extra-packs-install
