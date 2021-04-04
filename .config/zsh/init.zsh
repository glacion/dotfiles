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

alias l='ls -lAh'
alias d='docker'
alias k='kubectl'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias gcc='clang'
alias cc='clang'

