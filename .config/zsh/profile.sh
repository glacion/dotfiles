export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_NO_ENV_HINTS=true
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_REPOSITORY="/opt/homebrew"

export INFOPATH="/opt/homebrew/share/info:$INFOPATH"
export MANPATH="/opt/homebrew/share/man:$MANPATH"

export PATH="$HOME/.config/zsh/bin:\
$HOME/.local/bin:\
$HOME/.asdf/shims:\
$HOME/.cargo/bin:\
/opt/homebrew/opt/rustup/bin:\
/opt/homebrew/opt/coreutils/libexec/gnubin:\
/opt/homebrew/opt/postgresql@17/bin:\
/opt/homebrew/bin:\
/opt/homebrew/sbin:\
$PATH"

export EDITOR=nvim
export GOPATH=$HOME/.local/share/go
export TERRAFORM_BINARY_NAME=tofu
export TF_PLUGIN_CACHE_DIR="$HOME/.terraform.d/plugin-cache"
export VIM_MODE_ESC_PREFIXED_WANTED='^?^Hbdfhul.g'
export ZGENOM_DIR=$HOME/.local/share/zgenom
export ZOXIDE_CMD_OVERRIDE=cd
export ZSH_TMUX_AUTOCONNECT=false
export ZSH_TMUX_AUTOSTART=true
