return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  opts = {
    formatters_by_ft = {
      hcl = { "hclfmt" },
      javascript = { "prettierd" },
      json = { "prettierd" },
      lua = { "stylua" },
      markdown = { "prettierd" },
      typescript = { "prettierd" },
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
