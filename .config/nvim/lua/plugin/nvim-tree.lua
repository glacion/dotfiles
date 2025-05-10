return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    select_prompts = true,
    update_cwd = true,
    actions = {
      change_dir = {
        global = true,
      },
    },
    diagnostics = {
      enable = true,
    },
    filters = {
      dotfiles = true,
    },
    renderer = {
      group_empty = true,
    },
  },
  keys = {
    {
      "<A-n>",
      "<cmd>NvimTreeToggle<cr>",
      desc = "File Explorer",
    },
  },
}
