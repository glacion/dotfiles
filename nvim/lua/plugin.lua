vim.cmd [[packadd packer.nvim]]

local packer = require('packer')

local plugins = function()
	use {
		'wbthomason/packer.nvim',
		opt = true
	}
	use 'tpope/vim-sensible'
	use 'tpope/vim-fugitive'
	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/completion-nvim'
	use 'itchyny/vim-gitbranch'
	use 'sheerun/vim-polyglot'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'jiangmiao/auto-pairs'
	use 'joshdick/onedark.vim'
	use 'vim-airline/vim-airline'
	use 'mhinz/vim-signify'
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'
end 


return packer.startup(plugins)

