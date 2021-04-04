default: dependencies config

config:
	cp -rvf .config .gitconfig .profile .zprofile .zshrc ~/

dependencies: paru
	paru -Syu --noconfirm \
	fzf zsh picom-jonaburg-git \
	lightdm lightdm-gtk-theme neovim-nightly-bin \
	alacritty xorg-server rofi firefox \
	noto-fonts noto-fonts-cjk noto-fonts-emoji \
	qtile

paru: git
	tmp=$(shell mktemp) ;\
	cd $tmp ;\
	git clone https://aur.archlinux.org/paru-bin.git ;\
	cd paru-bin ;\
	makepkg -si --noconfirm ;\
	cd $HOME ;\
	rm -rf $tmp

git:
	sudo pacman -Syu --noconfirm git 