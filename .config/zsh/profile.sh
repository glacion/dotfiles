export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_NO_ENV_HINTS=true
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_REPOSITORY="/opt/homebrew"
export INFOPATH="/opt/homebrew/share/info:\
${INFOPATH:-}"
export MANPATH="/opt/homebrew/share/man\
${MANPATH+:$MANPATH}:"

export EDITOR=nvim

export AWS_DEFAULT_PROFILE=glacion.com

export POETRY_VIRTUALENVS_IN_PROJECT="true"

export PYTHONDONTWRITEBYTECODE=1
export PYTHONUNBUFFERED=1

export GOPATH=$HOME/.local/share/go

export ZGEN_DIR=$HOME/.local/share/zgen

export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:\
/opt/homebrew/bin:\
/opt/homebrew/sbin:\
$GOPATH/bin:\
${PATH+:$PATH}"
