-- NOTE: Theme options
vim.opt.termguicolors = true

-- NOTE: Numbering options
vim.opt.number = true
vim.opt.relativenumber = true

-- NOTE: TAB options
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- NOTE: Window options
vim.opt.splitbelow = true
vim.opt.splitright = true

-- NOTE: Scrolling options
vim.opt.scrolloff = 10

-- NOTE: Wrapping options
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.colorcolumn = "88"
vim.cmd("highlight ColorColumn guibg=#2e2e2e")

-- NOTE: Visual Mode options
vim.opt.virtualedit = "block"

-- NOTE: Search and Replace options
vim.opt.inccommand = "split"

-- NOTE: Folding options
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevelstart = 99

-- NOTE: Spellcheck options
vim.opt.spell = true

-- NOTE: Visualbell options
vim.opt.visualbell = true

-- NOTE: Mouse options
-- vim.opt.mouse = ""

-- NOTE: Diagnostics options
vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = true,
})

-- NOTE: Backup options
local path = vim.fn.stdpath("config")
local backup_path = path .. "/../.nvim-backup"

if not vim.fn.isdirectory(backup_path) then
    vim.fn.mkdir(backup_path)
end

vim.o.backup = true
vim.o.writebackup = true
vim.o.backupdir = backup_path
vim.o.backupext = ".bak"


