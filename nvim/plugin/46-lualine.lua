vim.pack.add({
    { src = utils.gh_url("nvim-lualine/lualine.nvim"), name = "lualine" },
})

require("lualine").setup({
    sections = {
        lualine_c = { { "filename", path = 1 } },
    },
})
