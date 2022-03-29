set encoding=utf-8
set nu

" Identation
set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2

lua require('plugins')
lua require('colors')

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif
