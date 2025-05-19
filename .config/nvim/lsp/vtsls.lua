---@type vim.lsp.Config
return {
  cmd = { "vtsls", "--stdio" },
  filetypes = {
    "javascript",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  root_markers = {
    "pnpm-lock.json",
    "package-lock.json",
    "tsconfig.json",
    ".git",
  },
  settings = {
    vtsls = { autoUseWorkspaceTsdk = true },

    javascript = {
      format = { enable = false },
      preferences = {
        importModuleSpecifier = "non-relative",
        importModuleSpecifierEnding = "auto",
      },
      inlayHints = {
        enumMemberValues = { enabled = true },
        functionLikeReturnTypes = { enabled = true },
        parameterNames = { enabled = "literals" },
        parameterTypes = { enabled = true },
        propertyDeclarationTypes = { enabled = true },
        variableTypes = { enabled = true },
      },
    },
    typescript = {
      format = { enable = false },
      inlayHints = {
        enumMemberValues = { enabled = true },
        functionLikeReturnTypes = { enabled = true },
        parameterNames = { enabled = "literals" },
        parameterTypes = { enabled = true },
        propertyDeclarationTypes = { enabled = true },
        variableTypes = { enabled = true },
      },
      preferences = {
        importModuleSpecifier = "non-relative",
        importModuleSpecifierEnding = "auto",
      },
    },
  },
  single_file_support = true,
}
