return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "ibhagwan/fzf-lua",
    },
    keys = {
        { "<leader>go", "<cmd>Neogit<cr>", desc = "NeoGit Open" },
    },
    opts = {
        kind = "tab"
    },
}
