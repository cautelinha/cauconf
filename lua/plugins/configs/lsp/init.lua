local lsp_installer = require('nvim-lsp-installer')
local lsp_utils = require('plugins/configs/lsp/keybinds')

lsp_installer.on_server_ready(function(server)
  server:setup({
    on_attach = lsp_utils.on_attach,
		capabilities = lsp_utils.capabilities,
    flags = {
      debounce_text_changes = 150,
    }
  })
end)
