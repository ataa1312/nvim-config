vim.pack.add({
    { src = utils.gh_url("lewis6991/gitsigns.nvim"), name = "gitsigns" },
})

vim.api.nvim_create_autocmd({ "BufReadPre", "BufNewFile" }, {
    callback = function(ev)
        require("gitsigns").setup({
            current_line_blame = true,
            -- toggle_word_diff = true
        })
    end,
})

vim.keymap.set(
    "n",
    "<leader>hp",
    "<cmd>Gitsigns preview_hunk<cr>",
    { desc = "GitSigns: Preview Hunk" }
)
vim.keymap.set(
    "n",
    "<leader>hr",
    "<cmd>Gitsigns reset_hunk<cr>",
    { desc = "GitSigns: Reset Hunk" }
)
vim.keymap.set(
    "n",
    "<leader>hs",
    "<cmd>Gitsigns select_hunk<cr>",
    { desc = "GitSigns: Select Hunk" }
)
vim.keymap.set(
    "n",
    "]h",
    "<cmd>Gitsigns next_hunk next<cr>",
    { desc = "GitSigns: Next Hunk" }
)
vim.keymap.set(
    "n",
    "[h",
    "<cmd>Gitsigns prev_hunk prev<cr>",
    { desc = "GitSigns: Previous Hunk" }
)
