if status is-interactive
  set fish_greeting

  set --global --export HOMEBREW_CELLAR /opt/homebrew/Cellar
  set --global --export HOMEBREW_PREFIX /opt/homebrew
  set --global --export HOMEBREW_REPOSITORY /opt/homebrew
  set --global --export INFOPATH /opt/homebrew/share/info $INFOPATH
  set --global --export MANPATH /opt/homebrew/share/man $MANPATH
  set --global --export TERRAFORM_BINARY_NAME tofu

  fish_add_path --global --move --path \
    /opt/homebrew/share/google-cloud-sdk/bin \
    /opt/homebrew/bin \
    /opt/homebrew/sbin \
    /opt/homebrew/opt/coreutils/libexec/gnubin \
    /opt/homebrew/opt/rustup/bin \
    $HOME/.local/bin \
    $HOME/.cargo/bin 

  alias k "kubectl"
  alias kctx "kubectl config use-context"
  alias kns "kubectl config set-context --current --namespace"
  alias ls "eza -lAh"
  alias vi "nvim"
  alias vim "nvim"

  fish_vi_key_bindings
end
