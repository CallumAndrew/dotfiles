-- Settings
vim.wo.nu = true -- Absolute line numbers

-- Plugins
return require('packer').startup(function()
	use 'wbthomason/packer.nvim' -- Packer
	use 'tpope/vim-fugitive' -- Git commands
end)
