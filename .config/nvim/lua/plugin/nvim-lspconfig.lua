return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  keys = {
    {
      "<leader>u",
      vim.lsp.buf.references,
      desc = "Symbol usage",
    },
    {
      "<leader>d",
      vim.lsp.buf.definition,
      desc = "Symbol definition",
    },
    {
      "<leader>h",
      vim.lsp.buf.hover,
      desc = "Hover over symbol",
    },
    {
      "<leader>r",
      vim.lsp.buf.rename,
      desc = "Rename symbol",
    },
    {
      "<leader>.",
      vim.lsp.buf.code_action,
      desc = "Code actions",
    },
    -- {
    --   "<leader><leader>",
    --   function()
    --     vim.lsp.buf.format({ async = true })
    --   end,
    --   desc = "Format document",
    -- },
  },
}
