---@type vim.lsp.Config
return {
  cmd = { "vtsls", "--stdio" },
  single_file_support = true,
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
        preferTypeOnlyAutoImports = true,
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
        preferTypeOnlyAutoImports = true,
      },
    },
  },
}
