return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    use_treesitter = true,
    show_current_context = true,
  },
}
