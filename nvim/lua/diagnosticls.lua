lspconfig = require 'lspconfig'

lspconfig.diagnosticls.setup{
  on_attach=custom_attach,
  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'css', 'scss', 'markdown', 'pandoc' },
  init_options = {
    linters = {
      eslint = {
        command = 'eslint',
        rootPatterns = { '.git' },
        debounce = 100,
        args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
      },
      markdownlint = {
        command = 'markdownlint',
        rootPatterns = { '.git' },
        isStderr = true,
        debounce = 100,
        args = { '--stdin' },
        offsetLine = 0,
        offsetColumn = 0,
        sourceName = 'markdownlint',
        securities = {
          undefined = 'hint'
        },
        formatPattern = {
          '^.*:(\\d+)\\s+(.*)$',
          {
            line = 1,
            column = -1,
            message = 2,
          }
        }
      }
    },
    filetypes = {
      javascript = 'eslint',
      javascriptreact = 'eslint',
      typescript = 'eslint',
      typescriptreact = 'eslint',
      markdown = 'markdownlint',
      pandoc = 'markdownlint',
    },
    formatters = {
      prettierEslint = {
        command = 'prettier-eslint',
        args = { '--stdin' },
        rootPatterns = { '.git' },
      },
      prettier = {
        command = 'prettier',
        args = { '--stdin-filepath', '%filename' }
      }
    },
    formatFiletypes = {
      css = 'prettier',
      javascript = 'prettierEslint',
      javascriptreact = 'prettierEslint',
      json = 'prettier',
      scss = 'prettier',
      markdown = 'prettier',
      typescript = 'prettierEslint',
      typescriptreact = 'prettierEslint'
    }
  }
}
