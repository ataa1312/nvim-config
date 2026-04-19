vim.pack.add({
    { src = utils.gh_url("ibhagwan/fzf-lua"), name = "fzf-lua" },
})

require("fzf-lua").setup({
    grep = {
        prompt = "Rg❯ ",
        input_prompt = "Grep For❯ ",
        multiprocess = true,
        git_icons = true,
        file_icons = true,
        color_icons = true,
        grep_opts = "--binary-files=without-match --line-number --recursive --color=auto --perl-regexp -e",
        rg_opts = "--vimgrep --column --line-number --glob '!**/.git/*' --no-heading --color=always --smart-case --max-columns=4096 -e",
        hidden = true,
        follow = true,
    },
})
local map = vim.keymap.set

-- Files
map("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "FZF: Files" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "FZF: Buffers" })
map("n", "<leader>ft", "<cmd>FzfLua tabs<cr>", { desc = "FZF: Tabs" })
map("n", "<leader>fl", "<cmd>FzfLua lines<cr>", { desc = "FZF: Buffer Lines" })

-- Search
map("n", "<leader>ss", "<cmd>FzfLua grep<cr>", { desc = "FZF: Grep" })
map(
    "n",
    "<leader>sr",
    "<cmd>FzfLua grep resume=true<cr>",
    { desc = "FZF: Grep Resume" }
)
map("x", "<leader>sv", "<cmd>FzfLua grep_visual<cr>", { desc = "FZF: Grep Visual" })

-- Help
map("n", "<leader>hh", "<cmd>FzfLua helptags<cr>", { desc = "FZF: Help Tags" })

-- Quickfix
map("n", "<leader>qq", "<cmd>FzfLua quickfix<cr>", { desc = "FZF: Quickfix" })

-- LSP
map("n", "<leader>lr", "<cmd>FzfLua lsp_references<cr>", { desc = "FZF: Lsp Refs" })
map("n", "<leader>ld", "<cmd>FzfLua lsp_definitions<cr>", { desc = "FZF: Lsp Defs" })
map("n", "<leader>lD", "<cmd>FzfLua lsp_declarations<cr>", { desc = "FZF: Lsp Decs" })
map("n", "<leader>lt", "<cmd>FzfLua lsp_typedefs<cr>", { desc = "FZF: Lsp Type Defs" })
map(
    "n",
    "<leader>ls",
    "<cmd>FzfLua lsp_document_symbols<cr>",
    { desc = "FZF: Lsp Doc" }
)
map("n", "<leader>lf", "<cmd>FzfLua lsp_finder<cr>", { desc = "FZF: Lsp Finder" })
