set encoding=utf-8
set nu
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2
set cmdheight=2
set clipboard="unnamedplus"
set hlsearch
set ignorecase
set smartindent
set updatetime=300
set scrolloff=10

lua require('plugins')
lua require('plugins/configs/colorscheme')
lua require('plugins/configs/lsp')
