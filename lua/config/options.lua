-- NOTE: Theme options 
vim.opt.termguicolors = true

-- NOTE: Numbering options 
vim.opt.number = true
vim.opt.relativenumber = true

-- NOTE: TAB options
vim.opt.expandtab = true  -- NOTE: Pressing the TAB key will insert spaces instead of a TAB character
vim.opt.tabstop = 4       -- NOTE: A TAB character looks like 4 spaces
vim.opt.softtabstop = 4   -- NOTE: Number of spaces inserted instead of a TAB character
vim.opt.shiftwidth = 4    -- NOTE: Number of spaces inserted when indenting

-- NOTE: Window options 
vim.opt.splitbelow = true
vim.opt.splitright = true

-- NOTE: Scrolling options
vim.opt.scrolloff = 25

-- NOTE: Wrapping options 
vim.opt.wrap = true
vim.opt.linebreak = true   -- only wrap at word boundaries
vim.opt.breakindent = true -- indent wrapped lines
vim.opt.colorcolumn = "80"
vim.cmd("highlight ColorColumn guibg=#2e2e2e")

-- NOTE: Visual Mode options 
vim.opt.virtualedit = "block"

-- NOTE: Search and Replace options 
vim.opt.inccommand = "split"


-- NOTE: Folding options 
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
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

