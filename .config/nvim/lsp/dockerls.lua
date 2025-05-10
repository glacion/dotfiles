---@type vim.lsp.Config
return {
  cmd = { "docker-langserver", "--stdio" },
  filetypes = { "dockerfile" },
  single_file_support = true,
  settings = {
    docker = {
      languageserver = {
        diagnostics = {
          deprecatedMaintainer = "warning",
          directiveCasing = "warning",
          emptyContinuationLine = "warning",
          instructionCasing = "error",
          instructionCmdMultiple = "warning",
          instructionEntrypointMultiple = "warning",
          instructionHealthcheckMultiple = "warning",
          instructionJSONInSingleQuotes = "error",
        },
        formatter = {
          ignoreMultilineInstructions = false,
        },
      },
    },
  },
}
