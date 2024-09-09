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
  zgenom load Aloxaf/fzf-tab
  zgenom load zsh-users/zsh-autosuggestions
  zgenom load zsh-users/zsh-completions
  zgenom load zsh-users/zsh-syntax-highlighting
  zgenom load "${config}/completions"

  zgenom oh-my-zsh plugins/sudo
  zgenom oh-my-zsh plugins/fzf

  zgenom oh-my-zsh plugins/asdf
  zgenom oh-my-zsh plugins/gcloud
  zgenom oh-my-zsh plugins/kubectl
  zgenom oh-my-zsh plugins/macos
  zgenom oh-my-zsh plugins/node
  zgenom oh-my-zsh plugins/npm
  zgenom oh-my-zsh plugins/pre-commit
  zgenom oh-my-zsh plugins/python
  zgenom oh-my-zsh plugins/terraform
  zgenom oh-my-zsh plugins/terragrunt
  zgenom oh-my-zsh plugins/yarn

  zgenom load jkavan/terragrunt-oh-my-zsh-plugin

  zgenom compile "${config}/prompt.zsh"
  zgenom compile "${config}/plugins.zsh"

  zgenom save
fi
