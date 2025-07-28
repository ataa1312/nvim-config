return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        formatters_by_ft = {
            python = { "isort", "black" },
            lua = { "stylua" },
            markdown = { "prettier" },
            tex = { "latexindent", "tex-fmt" },
        },
        formatters = {
            latexindent = {
                prepend_args = {
                    "--modifylinebreaks",
                    "-l",
                    "/Users/ata/.config/nvim/latexindent.yaml",
                },
                args = { "-" },
            },
            tex_fmt = {
                prepend_args = {
                    "--config", "/Users/ata/.config/nvim/tex-fmt.toml",
                },
            },
            prettier = {
                append_args = {
                    "--print-width",
                    "80",
                    "--prose-wrap",
                    "always",
                },
            },
        },
    },
}
