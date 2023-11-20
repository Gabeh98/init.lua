local lsp_zero = require('lsp-zero')
require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "tsserver", "csharp_ls" },
}

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


require('lspconfig').lua_ls.setup({})
require('lspconfig').tsserver.setup({})
require('lspconfig').csharp_ls.setup({})



