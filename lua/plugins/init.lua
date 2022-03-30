return require'packer'.startup(function()
	use 'wbthomason/packer.nvim'

	use 'kyazdani42/nvim-web-devicons'
	use 'https://github.com/jiangmiao/auto-pairs.git'
	use 'https://github.com/tpope/vim-fugitive.git'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'https://github.com/sickill/vim-monokai.git'

	use {
		'neovim/nvim-lspconfig',
		'williamboman/nvim-lsp-installer'
	}
	use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

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
