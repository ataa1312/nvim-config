vim.pack.add({
    { src = utils.gh_url("nvim-tree/nvim-web-devicons"), name = "web-devicons" },
    {
        src = utils.gh_url("echasnovski/mini.icons"),
        name = "mini-icons",
        version = vim.version.range("*"),
    },
})

require("nvim-web-devicons").setup()
require("mini.icons").setup()
