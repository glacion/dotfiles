---@type vim.lsp.Config
return {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".luarc.json", "luarc.lua", ".git" },
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      telemetry = { enable = false },
      workspace = {
        library = { vim.env.VIMRUNTIME },
      },
    },
  },
}
