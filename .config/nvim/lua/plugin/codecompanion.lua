return {
  "olimorris/codecompanion.nvim",
  config = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    adapters = {
      githubmodels = function()
        return require("codecompanion.adapters").extend("githubmodels", {
          max_tokens = 8192,
          model = "claude-3.5-sonnet",
          reasoning_effort = "high",
        })
      end,
    },
    strategies = {
      chat = {
        adapter = "githubmodels",
      },
      inline = {
        adapter = "githubmodels",
      },
    },
  },
}
