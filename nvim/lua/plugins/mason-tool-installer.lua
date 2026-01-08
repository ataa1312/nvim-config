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
            { "stylua" },
            { "marksman" },
            { "latexindent" },
            { "tex-fmt" },
            { "prettier" },
            { "bibtex-tidy" },
            { "ruff" },
            { "yq" },
            -- { "isort" },
            -- { "black" },
        },
    },
}
