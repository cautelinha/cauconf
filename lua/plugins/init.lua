return require'packer'.startup(function()
	use 'wbthomason/packer.nvim'
	use 'kyazdani42/nvim-web-devicons'
	use 'https://github.com/jiangmiao/auto-pairs.git'
	use 'https://github.com/tpope/vim-fugitive.git'
	use 'https://github.com/tomasr/molokai.git'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = require('plugins/configs/lualine')
	}

	use {
		'neovim/nvim-lspconfig',
		'williamboman/nvim-lsp-installer',
		config = require('plugins/configs/lsp')
	}

	use {
		'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = require('plugins/configs/bufferline')
	}

	--[[
	use {
		'lewis6991/gitsigns.nvim'
		--config = require('plugins/configs/gitsigns')
	}
	]]--

	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons',
		config = require('plugins/configs/nvim-tree')
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = 'nvim-lua/plenary.nvim',
		config = require('plugins/configs/telescope')
	}
end)
