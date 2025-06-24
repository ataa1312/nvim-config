return {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        formatters_by_ft = {
            python = { "isort", "black" },
            lua = { "stylua" }
        }
    },
}
