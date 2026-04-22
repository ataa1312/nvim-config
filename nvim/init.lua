vim.g.theme = "tokyonight-moon"
require("config")
utils = require("utils")

vim.lsp.config("*", {
    capabilities = {
        textDocument = {
            semanticTokens = {
                multilineTokenSupport = true,
            },
        },
    },
    root_markers = { ".git" },
})

-- INFO: Lsps
vim.lsp.enable("lua_ls")
vim.lsp.enable("basedpyright")
vim.lsp.enable("bashls")
vim.lsp.enable("clangd")
