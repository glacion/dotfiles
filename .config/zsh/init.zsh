zstyle ':omz:update' mode disabled
setopt interactivecomments

source $HOME/.config/zsh/plugins.zsh

alias vi="nvim"
alias vim="nvim"
alias ls="eza -lAh"

alias k="kubectl"
alias kns="kubectl config set-context --current --namespace"
alias kctx="kubectl config use-context"

function kga {
  for i in $(kubectl api-resources --verbs=list --namespaced -o name | grep -v "events.events.k8s.io" | grep -v "events" | sort | uniq); do
    echo "Resource:" $i 
    kubectl -n ${1} get --ignore-not-found ${i}
  done
}

