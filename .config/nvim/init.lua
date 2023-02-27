vim.o.expandtab = true
vim.o.shiftwidth = 2

vim.g.mapleader = ";"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.ignorecase = true
vim.o.infercase = true
vim.o.mouse = "a"
vim.o.mousefocus = true
vim.o.mousemoveevent = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false
vim.o.smartcase = true
vim.o.smartindent = true
vim.o.splitbelow = true
vim.o.splitkeep = "screen"
vim.o.splitright = true
vim.o.termguicolors = true
vim.o.undofile = true
vim.o.wrap = false

vim.opt.completeopt = {
  "menu",
  "menuone",
  "noinsert",
  "noselect",
  "preview",
}

-- Save on focus change
vim.api.nvim_create_autocmd("FocusLost", {
  pattern = "*",
  command = "silent! wa",
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugin", {
  checker = {
    enabled = true,
  },
  dev = {
    path = "~/Source",
  },
})
