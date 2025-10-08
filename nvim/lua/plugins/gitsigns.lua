return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
        {
            "<leader>gd",
            "<cmd>Gitsigns diffthis<cr>",
            desc = "GitSigns: Diff Current File",
        },
        {
            "<leader>gs",
            "<cmd>Gitsigns show<cr>",
            desc = "GitSigns: Show base",
        },
        {
            "<leader>hp",
            "<cmd>Gitsigns preview_hunk<cr>",
            desc = "GitSigns: Preview Hunk",
        },
        {
            "<leader>hr",
            "<cmd>Gitsigns reset_hunk<cr>",
            desc = "GitSigns: Reset Hunk",
        },
        {
            "<leader>hs",
            "<cmd>Gitsigns select_hunk<cr>",
            desc = "GitSigns: Select Hunk",
        },
        {
            "]h",
            "<cmd>Gitsigns next_hunk next<cr>",
            desc = "GitSigns: Next Hunk",
        },
        {
            "[h",
            "<cmd>Gitsigns prev_hunk prev<cr>",
            desc = "GitSigns: Previous Hunk",
        },
    },
    opts = {
        current_line_blame = true,
        -- toggle_word_diff = true
    },
}
