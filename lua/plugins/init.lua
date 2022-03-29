return require'packer'.startup(function()
	use 'wbthomason/packer.nvim'
	use 'https://github.com/jiangmiao/auto-pairs.git'
	use 'https://github.com/tpope/vim-fugitive.git'
	use 'https://github.com/tomasr/molokai.git'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
end)
