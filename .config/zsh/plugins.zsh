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
  zgenom load jkavan/terragrunt-oh-my-zsh-plugin
  zgenom load zsh-users/zsh-autosuggestions
  zgenom load zsh-users/zsh-completions
  zgenom load zsh-users/zsh-syntax-highlighting
  zgenom load "${config}/completions"

  zgenom oh-my-zsh plugins/sudo
  zgenom oh-my-zsh plugins/fzf

  zgenom oh-my-zsh plugins/aws
  zgenom oh-my-zsh plugins/terraform
  zgenom oh-my-zsh plugins/rust

  zgenom compile "${config}/prompt.zsh"
  zgenom compile "${config}/plugins.zsh"

  zgenom save
fi
