return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    select_prompts = true,
    update_cwd = true,
    update_focused_file = {
      enable = true,
      update_cwd = true,
    },
    diagnostics = {
      enable = true,
    },
    actions = {
      change_dir = {
        global = true,
      },
    },
  },
  keys = {
    {
      "<A-n>",
      "<CMD>NvimTreeToggle<CR>",
      desc = "Toggle NvimTree",
    },
  },
}
