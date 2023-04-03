return {
  "terrortylor/nvim-comment",
  opts = {
    comment_empty = false,
    hook = function()
      require("ts_context_commentstring.internal").update_commentstring()
    end,
  },
  config = function(_, opts)
    require("nvim_comment").setup(opts)
  end,
}
