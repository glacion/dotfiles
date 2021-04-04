omz='https://github.com/ohmyzsh/ohmyzsh/blob/master'

zinit ice lucid depth=1
zinit light romkatv/powerlevel10k 

zinit ice lucid depth=1
zinit light zsh-users/zsh-completions

zinit ice lucid depth=1
zinit light zsh-users/zsh-syntax-highlighting

zinit ice lucid depth=1
zinit light darvid/zsh-poetry

zinit snippet $omz/lib/compfix.zsh
zinit snippet $omz/lib/completion.zsh
zinit snippet $omz/lib/git.zsh
zinit snippet $omz/lib/key-bindings.zsh
zinit snippet $omz/lib/theme-and-appearance.zsh
zinit snippet $omz/lib/history.zsh

zinit snippet $omz/plugins/sudo/sudo.plugin.zsh
zinit snippet $omz/plugins/fzf/fzf.plugin.zsh

unset omz

