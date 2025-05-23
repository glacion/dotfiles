config=$HOME/.config/zsh

if [ ! -d "${ZGENOM_DIR}" ]; then
  git clone https://github.com/jandamm/zgenom.git "${ZGENOM_DIR}"
fi

source "${ZGENOM_DIR}/zgenom.zsh"
source "${config}/prompt.zsh"
if ! zgenom saved; then
  zgenom compdef

  zgenom oh-my-zsh

  zgenom load romkatv/powerlevel10k powerlevel10k
  zgenom load "${config}/completions"
  zgenom load zsh-users/zsh-completions
  zgenom load zsh-users/zsh-autosuggestions
  zgenom load zsh-users/zsh-syntax-highlighting
  zgenom load softmoth/zsh-vim-mode

  zgenom oh-my-zsh plugins/fzf

  zgenom oh-my-zsh plugins/gcloud
  zgenom oh-my-zsh plugins/gh
  zgenom oh-my-zsh plugins/kubectl
  zgenom oh-my-zsh plugins/macos
  zgenom oh-my-zsh plugins/mise
  zgenom oh-my-zsh plugins/node
  zgenom oh-my-zsh plugins/npm
  zgenom oh-my-zsh plugins/python
  zgenom oh-my-zsh plugins/tmux
  zgenom oh-my-zsh plugins/uv
  zgenom oh-my-zsh plugins/zoxide

  zgenom load Aloxaf/fzf-tab

  zgenom compile "${config}/prompt.zsh"
  zgenom compile "${config}/plugins.zsh"

  zgenom save
fi

zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
