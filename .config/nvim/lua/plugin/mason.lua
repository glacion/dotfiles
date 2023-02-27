return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "ansible-lint",
      "dockerfile-language-server",
      "gopls",
      "luacheck",
      "stylua",
    },
    pip = {
      upgrade_pip = true,
    },
  },
  config = function(_, opts)
    require("mason").setup(opts)
    local registry = require("mason-registry")
    for _, name in ipairs(opts.ensure_installed) do
      local package = registry.get_package(name)
      if not package:is_installed() then
        package:install()
      end
    end
  end,
}
