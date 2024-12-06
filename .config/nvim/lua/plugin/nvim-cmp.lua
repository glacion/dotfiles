return {
  "hrsh7th/nvim-cmp",

  dependencies = {
    "L3MON4D3/LuaSnip",
    "folke/noice.nvim",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-document-symbol",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-path",
    "lukas-reineke/cmp-under-comparator",
    "lukas-reineke/cmp-rg",
    "onsails/lspkind-nvim",
    "rafamadriz/friendly-snippets",
    "saadparwaiz1/cmp_luasnip",
  },

  config = function(_, opts)
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")

    cmp.setup(opts)
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,

  opts = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    local luasnip = require("luasnip")

    return {
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      enabled = function()
        -- disable completion in comments
        local context = require("cmp.config.context")
        -- keep command mode completion enabled when cursor is in a comment
        if vim.api.nvim_get_mode().mode == "c" then
          return true
        else
          return not context.in_treesitter_capture("comment")
            and not context.in_syntax_group("Comment")
        end
      end,
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<ESC>"] = cmp.mapping.abort(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end),
        ["<CR>"] = cmp.mapping({
          i = function(fallback)
            if cmp.visible() and cmp.get_active_entry() then
              cmp.confirm({
                behavior = cmp.ConfirmBehavior.Replace,
                select = false,
              })
            else
              fallback()
            end
          end,
          s = cmp.mapping.confirm({ select = true }),
          c = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          }),
        }),
      }),

      formatting = {
        format = lspkind.cmp_format({
          mode = "symbol",
          show_labelDetails = true,
          maxwidth = function()
            return math.floor(0.45 * vim.o.columns)
          end,
        }),
      },

      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "rg" },
        { name = "nvim_lsp_signature_help" },
        { name = "nvim_lsp_document_symbol" },
        { name = "luasnip" },
      }),
    }
  end,
}
