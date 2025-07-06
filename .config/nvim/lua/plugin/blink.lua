return {
  "Saghen/blink.cmp",
  version = "v1.4.1",
  opts_extend = { "sources.default" },
  opts = {
    appearance = {
      highlight_ns = vim.api.nvim_create_namespace("blink_cmp"),
      use_nvim_cmp_as_default = true,
    },
    completion = {
      documentation = {
        auto_show = true,
        window = { border = "rounded" },
      },
      list = { selection = { preselect = false, auto_insert = true } },
      menu = {
        border = "rounded",
        draw = { treesitter = { "lsp" } },
      },
    },
    keymap = {
      preset = "none",

      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<ESC>"] = { "hide", "fallback" },
      ["<CR>"] = { "accept", "fallback" },

      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },

      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },
    },
    signature = {
      enabled = true,
      window = { border = "rounded" },
    },
    sources = {
      default = { "lsp" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  keys = {
    { "<leader>.", vim.lsp.buf.code_action, desc = "Code actions" },
    { "<leader>d", vim.lsp.buf.definition, desc = "Symbol definition" },
    { "<leader>h", vim.lsp.buf.hover, desc = "Hover over symbol" },
    { "<leader>r", vim.lsp.buf.rename, desc = "Rename symbol" },
    { "<leader>u", vim.lsp.buf.references, desc = "Symbol usage" },
  },
}
