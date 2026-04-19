vim.pack.add({
    { src = utils.gh_url("sphamba/smear-cursor.nvim"), name = "smear-cursor" },
})

require("smear_cursor").setup({
    time_interval = 7, -- milliseconds
    legacy_computing_symbols_support = false,
})
