vim.pack.add({
    { src = utils.gh_url("catppuccin/nvim"), name = "catppuccin" },
    { src = utils.gh_url("folke/tokyonight.nvim"), name = "tokyonight" },
})

vim.cmd.colorscheme("catppuccin-mocha")
