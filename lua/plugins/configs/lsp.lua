local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  "pylsp",
  "clangd",
  "gopls",
  "html",
  "cssls",
  "tsserver",
  "sqlls",
  "rust_analyzer",
  "tailwindcss",
  "jsonls",
})
lsp.skip_server_setup({'rust_analyzer'})
lsp.setup()
local rust_lsp = lsp.build_options('rust_analyzer', {
  single_file_support = true,
  on_attach = function(client, bufnr)
end
})
lsp.on_attach(function(client, bufnr)
  print('LSP Attached')
end)

require('rust-tools').setup({server = rust_lsp})
