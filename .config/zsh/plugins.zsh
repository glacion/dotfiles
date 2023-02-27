zgen oh-my-zsh
zgen load romkatv/powerlevel10k powerlevel10k

zgen loadall << EOF
	  Aloxaf/fzf-tab
    zsh-users/zsh-autosuggestions
    zsh-users/zsh-completions
    zsh-users/zsh-syntax-highlighting
    $HOME/.config/zsh/completions
EOF

zgen oh-my-zsh plugins/sudo
zgen oh-my-zsh plugins/fzf

zgen oh-my-zsh plugins/aws
zgen oh-my-zsh plugins/docker
zgen oh-my-zsh plugins/docker-compose
zgen oh-my-zsh plugins/helm
zgen oh-my-zsh plugins/kubectl
zgen oh-my-zsh plugins/poetry
zgen oh-my-zsh plugins/python
zgen oh-my-zsh plugins/terraform

