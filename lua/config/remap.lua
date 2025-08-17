-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- NOTE: VIM Keymaps
vim.keymap.set("n", "<leader>E", vim.cmd.Ex,
    { desc = "Open File Explorer" })
vim.keymap.set("n", "<leader>X", vim.cmd.bd,
    { desc = "Delete Current Buffer" })

-- vim.keymap.set("n", "<leader>o", "o<Esc>",
--     { desc = "Insert a New Line Below" })
-- vim.keymap.set("n", "<leader>O", "O<Esc>",
--     { desc = "Insert a New Line Above" })

-- NOTE: Traversal Keymaps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- NOTE: Copy & Paste Links
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]],
    { desc = "Copy into The Clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]],
    { desc = "Copy into The Clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]],
    { desc = "Cut without Overwriting The Clipboard" })

vim.keymap.set("n", "<leader><leader>",
    function() vim.cmd("so") end,
    { desc = "Source This File" })

