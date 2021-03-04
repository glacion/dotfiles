vim.cmd("packadd packer.nvim")

local packer = require("packer")

local plugins = function()
	use("tpope/vim-sensible")
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("neovim/nvim-lspconfig")
	use("mhinz/vim-signify")
	use("kyazdani42/nvim-web-devicons")
	use("kyazdani42/nvim-tree.lua")
	use("romgrk/barbar.nvim")
	use({
		"b3nj5m1n/kommentary",
		setup = function()
			vim.g.kommentary_create_default_mappings = false
		end,
		config = function()
			require("config.kommentary")
		end
	})
	use("nvim-lua/completion-nvim")
	use({
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end
	})
	use("windwp/nvim-autopairs")
	use("f-person/git-blame.nvim")
	use("joshdick/onedark.vim")
	use("p00f/nvim-ts-rainbow")
	use("nvim-telescope/telescope.nvim")
	use({
		"blackCauldron7/surround.nvim",
		config = function()
			require("surround").setup({})
		end
	})
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			vim.cmd("TSUpdate")
		end,
		config = function()
			require("config.treesitter")
		end
	})
	use({
		"glepnir/galaxyline.nvim",
		branch = "main",
		config = function()
			require("config.galaxyline")
		end,
	})
	use({
		"wbthomason/packer.nvim",
		opt = true,
	})
end

return packer.startup(plugins)

