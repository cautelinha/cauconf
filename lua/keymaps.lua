local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ''
vim.g.maplocalleader = ''

-- Resize with arrows
keymap('n', '<C-Up>', ':resize -2<CR>', opts)
keymap('n', '<C-Down>', ':resize +2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)

keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)
