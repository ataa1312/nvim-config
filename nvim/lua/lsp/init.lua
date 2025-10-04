require("lsp.lua-language-server")
require("lsp.basedpyright")
require("lsp.clangd")
require("lsp.marksman")
require("lsp.tex-lab")

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
