require("config")
print("Hello from NVIM")

vim.cmd[[colorscheme tokyonight]]
vim.o.relativenumber = true

-- NOTE: TAB options
vim.o.expandtab = true  -- NOTE: Pressing the TAB key will insert spaces instead of a TAB character
vim.o.tabstop = 4       -- NOTE: A TAB character looks like 4 spaces
vim.o.softtabstop = 4   -- NOTE: Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4    -- NOTE: Number of spaces inserted when indenting
