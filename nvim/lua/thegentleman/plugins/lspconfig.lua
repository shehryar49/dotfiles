return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "folke/neodev.nvim", opts = {} },
    },
    config = function()
        local nvim_lsp = require("lspconfig")
        local protocol = require("vim.lsp.protocol")

        local on_attach = function(client, bufnr)
           
        end
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        
        nvim_lsp["pyright"].setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })
        nvim_lsp["clangd"].setup({
            on_attach = on_attach,
            capabilities = capabilities
        })
            
    end,
}
