require("mason").setup()
require("mason-lspconfig").setup()
-- Autoformat on save
vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
