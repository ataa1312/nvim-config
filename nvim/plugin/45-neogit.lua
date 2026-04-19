vim.pack.add({
    { src = utils.gh_url("NeogitOrg/neogit"), name = "neogit" },
})

require("neogit").setup({
    kind = "tab",
})

local map = vim.keymap.set

map("n", "<leader>go", "<cmd>Neogit<cr>", { desc = "NeoGit Open" })

return {
    dependencies = {
        "nvim-lua/plenary.nvim",
        "ibhagwan/fzf-lua",
    },
}
