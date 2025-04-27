-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- NOTE: VIM Keymaps
vim.keymap.set("n", "<leader>E", vim.cmd.Ex,
                {desc="Open File Explorer"})
vim.keymap.set("n", "<leader>o", "o<Esc>",
                {desc="Insert a New Line Below"})
vim.keymap.set("n", "<leader>O", "O<Esc>",
                {desc="Insert a New Line Above"})

-- NOTE: Traversal Keymaps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- NOTE: Copy & Paste Links
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]],
                {desc="Copy into The Clipboard"})
vim.keymap.set("n", "<leader>Y", [["+Y]],
                {desc="Copy into The Clipboard"})
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]],
                {desc="Cut without Overwriting The Clipboard"})

vim.keymap.set("n", "<leader><leader>",
               function() vim.cmd("so") end,
                {desc="Source This File"})


-- NOTE: FZF-LUA General Keymaps
vim.keymap.set({"n", "v"}, "<leader>ff",
               function() require("fzf-lua").files() end)

vim.keymap.set({"n", "v"}, "<leader>ft",
               function() require("fzf-lua").tabs() end)
               
-- NOTE: FZF-LUA Grep Keymaps
vim.keymap.set({"n", "v"}, "<leader>fg",
               function() require("fzf-lua").grep() end)

vim.keymap.set({"n", "v"}, "<leader>fgl",
               function() require("fzf-lua").grep_last() end)

-- NOTE: FZF-LUA Git Keymaps
vim.keymap.set({"n", "v"}, "<leader>fgf",
               function() require("fzf-lua").git_files() end)

vim.keymap.set({"n", "v"}, "<leader>fgs",
               function() require("fzf-lua").git_status() end)

vim.keymap.set({"n", "v"}, "<leader>fgc",
               function() require("fzf-lua").git_commits() end)

vim.keymap.set({"n", "v"}, "<leader>fgbc",
               function() require("fzf-lua").git_bcommits() end)

vim.keymap.set({"n", "v"}, "<leader>fgb",
               function() require("fzf-lua").git_branches() end)

