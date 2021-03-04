local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"
local packer_url = "https://github.com/wbthomason/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.cmd(join({
		"!git clone",
		packer_url,
		" ",
		install_path,
		}))
	vim.cmd("packadd packer.nvim")
end
