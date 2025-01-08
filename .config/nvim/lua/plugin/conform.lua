return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  opts = {
    formatters_by_ft = {
      json = { "prettier" },
      lua = { "stylua" },
      markdown = { "prettier" },
      yaml = { "prettier" },
      typescript = { "prettier" },
      javascript = { "prettier" },
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
