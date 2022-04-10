require'nvim-treesitter.configs'.setup {
	ensure_installed = "maintained",
	sync_install = false,
  autopairs = {
    enable = true,
  },
	highlight = {
		enable = true,
    additional_vim_regex_highlighting = true,
	},
  indent = { enable = true },
  context_commentstring = { enable = true },
}