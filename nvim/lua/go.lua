lspconfig = require('lspconfig')
lspconfig.gopls.setup {
	cmd = {
		'gopls', 
		'serve',
	},
	settings = {
		gopls = {
			analyses = {
				fieldalignment= true,
				unreachable = true,
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
}

vim.g.go_highlight_types = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_def_mode = 'gopls'
vim.g.go_info_mode = 'gopls'

