vim.pack.add({
    {
        src = utils.gh_url("lervag/vimtex"),
        name = "vimtex",
    },
})

vim.g.vimtex_view_method = "skim"
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_log_ignore = { "Underfull", "Overfull", "specifier changed to" }
