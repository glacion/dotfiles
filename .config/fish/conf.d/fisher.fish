if status is-interactive
  if not type --query fisher
    curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/refs/tags/4.4.5/functions/fisher.fish | source 
    fisher install jorgebucaran/fisher
  end
end
