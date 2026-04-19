vim.pack.add({
    { src = utils.gh_url("christoomey/vim-tmux-navigator"), name = "tmux-navigator" },
})

-- FIXME: I need to add lazy loading later

vim.keymap.set(
    "n",
    "<c-h>",
    "<cmd>TmuxNavigateLeft<cr>",
    { desc = "Navigate to pane on left" }
)
vim.keymap.set(
    "n",
    "<c-j>",
    "<cmd>TmuxNavigateDown<cr>",
    { desc = "Navigate to pane above" }
)
vim.keymap.set(
    "n",
    "<c-k>",
    "<cmd>TmuxNavigateUp<cr>",
    { desc = "Navigate to pane above" }
)
vim.keymap.set(
    "n",
    "<c-l>",
    "<cmd>TmuxNavigateRight<cr>",
    { desc = "Navigate to pane on right" }
)
vim.keymap.set(
    "n",
    "<c-\\>",
    "<cmd>TmuxNavigatePrevious<cr>",
    { desc = "Navigate to previous pane" }
)
