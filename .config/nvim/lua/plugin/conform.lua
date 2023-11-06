return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  opts = {
    formatters_by_ft = {
      javascript = { "prettierd" },
      lua = { "stylua" },
      markdown = { "prettierd" },
      rust = { "rustfmt" },
      yaml = { "prettierd" },
    },
  },
  keys = {
    {
      "<leader><leader>",
      function()
        require("conform").format({
          async = true,
          lsp_fallback = true,
        })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
}
