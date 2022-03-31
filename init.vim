set encoding=utf-8
set hidden
set nobackup
set nowritebackup
set nu
set tabstop=2
set softtabstop=2 expandtab
set shiftwidth=2
set cmdheight=2
set clipboard="unnamedplus"
set hlsearch
set ignorecase
set smartindent
set updatetime=300
set scrolloff=10
set shortmess+=c
set signcolumn=number

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

lua require('keymaps')
lua require('plugins')
lua require('plugins/configs/colorscheme')
lua require('plugins/configs/fzf')

runtime ./coc-keybinds.vim

let $FZF_DEFAULT_COMMAND="rg --files"
