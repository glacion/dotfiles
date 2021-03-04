vim.o.termguicolors = true
vim.g.onedark_hide_endofbuffer = 1
vim.g.onedark_terminal_italics = 1
vim.g.colors_name = "onedark"
vim.g.onedark_color_overrides = {
	black = {
		gui = "#21252b",
		cterm = "033",
		cterm16 = 0,
	},
}

vim.g.completion_sorting = "none"
vim.g.smartcase = true
vim.g.mapleader = ";"

vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"
vim.bo.tabstop = 4

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.wrap = false

vim.o.mouse = "a"
vim.o.showmode = false
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.completeopt = "menuone,noselect,noinsert"
vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath("cache") .. "/undo"

