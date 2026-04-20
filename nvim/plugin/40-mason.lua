vim.pack.add({
    { src = utils.gh_url("mason-org/mason.nvim"), name = "mason" },
    {
        src = utils.gh_url("WhoIsSethDaniel/mason-tool-installer.nvim"),
        name = "mason-tool-installer",
    },
})

require("mason").setup()
require("mason-tool-installer").setup({
    ensure_installed = {
        -- NOTE: LSPs
        { "basedpyright" },
        { "lua-language-server" },
        { "clangd" },
        { "texlab" },
        { "rust-analyzer" },
        { "bash-language-server" },

        -- NOTE: Formatters
        { "stylua" },
        { "marksman" },
        { "latexindent" },
        { "tex-fmt" },
        { "prettier" },
        { "bibtex-tidy" },
        { "ruff" },
        { "yq" },
        { "clang-format" },
        { "shfmt" },
        -- { "isort" },
        -- { "black" },
    },
})
