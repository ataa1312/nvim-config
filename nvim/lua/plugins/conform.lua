return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
        {
            "<leader>gw",
            function()
                require("conform").format({
                    lsp_fallback = false,
                    async = false,
                    timeout_ms = 1000,
                })
            end,
            desc = "Conform: Format Current File",
        },
    },
    opts = {
        formatters_by_ft = {
            python = { "ruff_fix", "ruff_format", "ruff_organize_imports" }, -- "isort", "black"
            lua = { "stylua" },
            markdown = { "prettier" },
            tex = { "latexindent" }, -- "tex-fmt"
            bib = { "bibtex-tidy" },
            yaml = { "yq" },
            yml = { "yq" },
        },
        formatters = {
            stylua = {
                prepend_args = {
                    "--column-width",
                    "88",
                    "--indent-type",
                    "Spaces",
                    "--indent-width",
                    "4",
                    "--line-endings",
                    "UNIX",
                    "--quote-style",
                    "AutoPreferDouble",
                },
                args = { "-" },
            },
            latexindent = {
                prepend_args = {
                    "--modifylinebreaks",
                    "-l",
                    "/Users/ata/.config/nvim/latexindent.yaml",
                },
                args = { "-" },
            },
            ["tex-fmt"] = {
                prepend_args = {
                    "--config",
                    "/Users/ata/.config/nvim/tex-fmt.toml",
                    "--nowrap",
                },
            },
            prettier = {
                append_args = {
                    "--print-width",
                    "88",
                    "--prose-wrap",
                    "always",
                },
            },
            ["bibtex-tidy"] = {
                prepend_args = {
                    "--omit=abstract,publisher,location,doi", --keywords
                    "--curly",
                    "--space=4",
                    "--align=14",
                    "--blank-lines",
                    "--duplicates",
                    "--drop-all-caps",
                    "--sort-fields",
                    "--wrap=88",
                },
                args = { "-" },
            },
            yq = {
                command = "yq",
                args = {
                    "eval",
                    "--indent",
                    "2",
                    "--no-colors",
                },
                stdin = true,
            },
        },
    },
}
