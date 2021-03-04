local lspconfig = require("lspconfig")
local completion = require("completion")
lspconfig.gopls.setup({
	on_attach = completion.on_attach,
	cmd = {
		"gopls",
		"serve",
	},
	settings = {
		gopls = {
			analyses = {
				fieldalignment = true,
				unreachable = true,
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
})

