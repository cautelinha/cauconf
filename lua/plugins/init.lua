return require'packer'.startup(function()
	use 'wbthomason/packer.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
	use 'https://github.com/tpope/vim-fugitive.git'

	use {
		'junegunn/fzf',
		'junegunn/fzf.vim'
	}

	use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
		config = function() require'nvim-tree'.setup {} end
	}

	use {
		'neovim/nvim-lspconfig',
		config = function() require'plugins/lsp-config' end
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
end)
