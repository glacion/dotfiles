POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status user host dir vcs dir_writable)
POWERLEVEL9K_DISABLE_RPROMPT=true

alias rm='rm -vr'

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit ice svn multisrc'*.zsh'
zinit snippet OMZ::lib
zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh
zinit snippet OMZ::plugins/fzf/fzf.plugin.zsh

zinit ice as'completion'
zinit snippet https://gist.githubusercontent.com/blueyed/54a257c411310a28805a/raw/cf9be9e0097839af88518e272c39256534799da0/_pip.zsh

zinit ice as'completion'
zinit snippet https://github.com/docker/cli/blob/master/contrib/completion/zsh/_docker

zinit ice as'completion'
zinit snippet https://github.com/docker/compose/blob/master/contrib/completion/zsh/_docker-compose

zinit light romkatv/powerlevel10k

zinit ice wait blockf atpull'zinit creinstall -q .' lucid
zinit light zsh-users/zsh-completions

zinit ice wait atinit"zpcompinit; zpcdreplay" lucid
zinit light zsh-users/zsh-syntax-highlighting


