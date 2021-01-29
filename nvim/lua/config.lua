vim.g.onedark_hide_endofbuffer = 1
vim.g.onedark_terminal_italics = 1
vim.g.colors_name = 'onedark'
vim.g.airline_theme = 'onedark'
vim.g.airline_powerline_fonts = 1
vim.g.airline_highlighting_cache = 1
vim.g['airline#extensions#tabline#enabled'] = 1

vim.g.completion_sorting = 'none'
vim.g.smartcase = true
vim.g.mapleader = ';'

vim.bo.omnifunc = 'v:lua.vim.lsp.omnifunc'
vim.bo.tabstop = 4

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.cursorline = true
vim.wo.wrap = false

vim.o.termguicolors = true
vim.o.mouse = 'a'
vim.o.showmode = false
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.completeopt = 'menuone,noselect,noinsert'
vim.o.undofile = true
vim.o.undodir = vim.fn.stdpath('cache') .. '/undo'

