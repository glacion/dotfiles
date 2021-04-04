default: dependencies config font

config:
	cp -rvf .config .gitconfig .profile .zprofile .zshrc ~/

font:
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hasklig.zip ;\
	unzip Hasklig.zip ;\
	rm -rf *Windows* ;\
	sudo mkdir -p /usr/local/share/fonts/hasklug ;\
	sudo mv *.otf /usr/local/share/fonts/hasklug/ ;\
	fc-cache -fv

dependencies: paru
	paru -Syu --noconfirm \
	fzf zsh picom-jonaburg-git \
	neovim-nightly-bin wget \
	alacritty rofi qtile unzip

paru: git
	git clone https://aur.archlinux.org/paru-bin.git ;\
	cd paru-bin ;\
	makepkg -si --noconfirm ;\
	cd $HOME ;\

git:
	sudo pacman -Syu --noconfirm git 
