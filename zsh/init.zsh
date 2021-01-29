setopt interactivecomments

fpath=(
    "$HOME/.config/zsh/completions"
    "${fpath[@]}"
)

autoload -U compinit
compinit

config=$HOME/.config/zsh

source $config/zinit.zsh
source $config/prompt.zsh
source $config/plugins.zsh
source $config/asdf.zsh

alias l='ls -lAh'
alias d='docker'
alias k='kubectl'

function update_nvim() {
    asdf uninstall neovim nightly
    asdf install neovim nightly
}
