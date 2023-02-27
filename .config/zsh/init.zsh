config=$HOME/.config/zsh

zstyle ':omz:update' mode disabled
setopt interactivecomments

source $config/zgen.zsh
source $config/prompt.zsh

if ! zgen saved; then
  source $config/plugins.zsh
  zgen save
fi

alias vi="nvim"
alias vim="nvim"
alias ls="exa -lah"

alias k="kubectl"
alias kns="kubectl config set-context --current --namespace"
alias kctx="kubectl config use-context"

function kga {
  for i in $(kubectl api-resources --verbs=list --namespaced -o name | grep -v "events.events.k8s.io" | grep -v "events" | sort | uniq); do
    echo "Resource:" $i
    kubectl -n ${1} get --ignore-not-found ${i}
  done
}

function nerdctl {
  lima nerdctl "$@"
}
