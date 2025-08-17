return {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
        ensure_installed = {
            -- NOTE: LSPs
            { "basedpyright" },
            { "lua-language-server" },
            { "clangd" },
            { "texlab" },
            { "rust-analyzer" },

            -- NOTE: Formatters
            { "isort" },
            { "black" },
            { "stylua" },
            { "marksman" },
            { "latexindent" },
            { "tex-fmt" },
            { "prettier" },
        },
    },
}
