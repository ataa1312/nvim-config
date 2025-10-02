return {
    "ibhagwan/fzf-lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "echasnovski/mini.icons",
    },

    keys = {
        --#region
        {
            "<leader>ff",
            "<cmd>FzfLua files<cr>",
            desc = "FZF: Files",
        },
        {
            "<leader>fb",
            "<cmd>FzfLua buffers<cr>",
            desc = "FZF: Buffers",
        },
        {
            "<leader>ft",
            "<cmd>FzfLua tabs<cr>",
            desc = "FZF: Tabs",
        },
        {
            "<leader>fl",
            "<cmd>FzfLua lines<cr>",
            desc = "FZF: Buffer Lines",
        },
        --#endregion
        --#region
        {
            "<leader>ss",
            "<cmd>FzfLua grep<cr>",
            desc = "FZF: Search via Grep",
        },
        {
            "<leader>sr",
            "<cmd>FzfLua grep_last<cr>",
            desc = "FZF: Search Resume",
        },
        {
            "<leader>sv",
            "<cmd>FzfLua grep_visual<cr>",
            desc = "FZF: Search Visual Selection",
        },
        --#endregion
        --#region
        {
            "<leader>gf",
            "<cmd>FzfLua git_files<cr>",
            desc = "FZF: Git Files",
        },
        {
            "<leader>gs",
            "<cmd>FzfLua git_status<cr>",
            desc = "FZF: Git Status",
        },
        {
            "<leader>gc",
            "<cmd>FzfLua git_commits<cr>",
            desc = "FZF: Git Commits",
        },
        {
            "<leader>gbc",
            "<cmd>FzfLua git_bcommits<cr>",
            desc = "FZF: Git Buffer Commits",
        },
        {
            "<leader>gb",
            "<cmd>FzfLua git_branches<cr>",
            desc = "FZF: Git Branches",
        },
        --#endregion
        --#region
        {
            "<leader>lr",
            "<cmd>FzfLua lsp_references<CR>",
            desc = "FZF: Lsp References",
        },
        {
            "<leader>ld",
            "<cmd>FzfLua lsp_definitions<CR>",
            desc = "FZF: Lsp Definitions",
        },
        {
            "<leader>lD",
            "<cmd>FzfLua lsp_declarations<CR>",
            desc = "FZF: Lsp Declarations",
        },
        {
            "<leader>lt",
            "<cmd>FzfLua lsp_typedefs<CR>",
            desc = "FZF: Lsp Type Definitions",
        },
        {
            "<leader>ls",
            "<cmd>FzfLua lsp_document_symbols<CR>",
            desc = "FZF: Lsp Document Symbols",
        },
        {
            "<leader>lf",
            "<cmd>FzfLua lsp_finder<CR>",
            desc = "FZF: Lsp Finder (combined)",
        },
        --#endregion    
    },
    opts = {},
}
