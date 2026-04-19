vim.pack.add({
    { src = utils.gh_url("folke/which-key.nvim"), name = "which-key" },
})

vim.keymap.set("n", "<leader>?", function()
    require("which-key").show({ global = false })
end, {
    desc = "Buffer Local Keymaps (which-key)",
})

require("which-key").setup()
