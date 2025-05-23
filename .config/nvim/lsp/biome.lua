---@type vim.lsp.Config
return {
  cmd = { "biome", "lsp-proxy" },
  single_file_support = false,
  filetypes = {
    "astro",
    "css",
    "graphql",
    "javascript",
    "javascriptreact",
    "json",
    "jsonc",
    "svelte",
    "typescript",
    "typescript.tsx",
    "typescriptreact",
    "vue",
  },
  root_markers = {
    ".git",
    "biome.json",
    "package-lock.json",
    "pnpm-lock.json",
    "tsconfig.json",
  },
}
