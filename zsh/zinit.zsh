if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]
then
    echo "Bootstrapping zinit..."
    command mkdir -p "$HOME/.zinit" 
    command chmod g-rwX "$HOME/.zinit"
    command git clone --depth 1 https://github.com/zdharma/zinit "$HOME/.zinit/bin"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
