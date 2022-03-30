return require'packer'.startup(function()
	use 'wbthomason/packer.nvim'

	use 'kyazdani42/nvim-web-devicons'
	use 'https://github.com/jiangmiao/auto-pairs.git'
	use 'https://github.com/tpope/vim-fugitive.git'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'https://github.com/sickill/vim-monokai.git'
	use 'https://github.com/morhetz/gruvbox.git'
	use 'https://github.com/pineapplegiant/spaceduck.git'
	use 'itchyny/lightline.vim'
	use 'hrsh7th/nvim-cmp' -- The completion plugin
  use 'hrsh7th/cmp-buffer' -- buffer completions
  use 'hrsh7th/cmp-path' -- path completions
  use 'hrsh7th/cmp-cmdline' -- cmdline completions
  use 'saadparwaiz1/cmp_luasnip' -- snippet completions
  use 'hrsh7th/cmp-nvim-lsp'
	use 'antoinemadec/FixCursorHold.nvim' -- This is needed to fix lsp doc highlight
	use 'lukas-reineke/indent-blankline.nvim'

	-- snippets
  use 'L3MON4D3/LuaSnip' --snippet engine
  use 'rafamadriz/friendly-snippets' -- a bunch of snippets to use

	use {
		'neovim/nvim-lspconfig',
		'williamboman/nvim-lsp-installer'
	}
	use 'tamago324/nlsp-settings.nvim' -- language server settings defined in json for
  use {
		'jose-elias-alvarez/null-ls.nvim',
		requires = 'nvim-lua/plenary.nvim'
	}
	use('MunifTanjim/prettier.nvim') -- format file

	use {
		'preservim/nerdtree',
		requires = 'Xuyuanp/nerdtree-git-plugin',
		config = function() require('plugins/configs/nerdtree') end
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function() require('plugins/configs/tree-sitter') end
	}
	
	use {
		'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		config = function() require('plugins/configs/bufferline') end
	}
end)
