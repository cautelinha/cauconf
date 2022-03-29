local lsp_utils = require('plugins/configs/lsp/keybinds')

-- map buffer local keybindings when the language server attaches
local servers = { 'angularls', 'tsserver' }
for _, lsp in pairs(servers) do
  require('lspconfig')[lsp].setup {
    on_attach = lsp_utils.on_attach,
		capabilities = lsp_utils.capabilities,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    }
  }
end
