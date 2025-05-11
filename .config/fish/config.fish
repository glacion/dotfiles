if status is-interactive
  set fish_greeting

  set --universal fifc_custom_fzf_opts --height ~20% --layout reverse --border --bind tab:down --bind btab:up
  set --universal fifc_exa_opts -lAh

  alias k "kubectl"
  alias kns "kubectl config set-context --current --namespace"
  alias kctx "kubectl config use-context"

  fish_vi_key_bindings
end
