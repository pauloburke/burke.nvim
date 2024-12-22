return {
    "williamboman/mason-lspconfig.nvim",
    setup = function()
        require('mason-lspconfig').setup({
            -- Replace the language servers listed here
            -- with the ones you want to install
            -- ensure_installed = {'lua_ls', 'rust_analyzer'},
            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({})
                end,
            },
        })

        require 'lspconfig'.lua_ls.setup {
            -- ... other configs
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { 'vim' }
                    }
                }
            }
        }
    end
}