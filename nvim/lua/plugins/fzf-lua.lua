return {
    "ibhagwan/fzf-lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "echasnovski/mini.icons",
    },

    keys = {
        { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "FZF: Files" },
        { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "FZF: Buffers" },
        { "<leader>ft", "<cmd>FzfLua tabs<cr>", desc = "FZF: Tabs" },
        { "<leader>fl", "<cmd>FzfLua lines<cr>", desc = "FZF: Buffer Lines" },

        { "<leader>ss", "<cmd>FzfLua grep<cr>", desc = "FZF: Grep" },
        { "<leader>sr", "<cmd>FzfLua grep resume=true<cr>", desc = "FZF: Grep Resume" },
        { "<leader>sv", "<cmd>FzfLua grep_visual<cr>", desc = "FZF: Grep Visual" },

        { "<leader>gf", "<cmd>FzfLua git_files<cr>", desc = "FZF: Git Files" },
        { "<leader>gs", "<cmd>FzfLua git_status<cr>", desc = "FZF: Git Status" },
        { "<leader>gc", "<cmd>FzfLua git_commits<cr>", desc = "FZF: Git Commits" },
        { "<leader>gb", "<cmd>FzfLua git_branches<cr>", desc = "FZF: Git Branches" },

        { "<leader>lr", "<cmd>FzfLua lsp_references<cr>", desc = "FZF: Lsp Refs" },
        { "<leader>ld", "<cmd>FzfLua lsp_definitions<cr>", desc = "FZF: Lsp Defs" },
        { "<leader>lD", "<cmd>FzfLua lsp_declarations<cr>", desc = "FZF: Lsp Decs" },
        { "<leader>lt", "<cmd>FzfLua lsp_typedefs<cr>", desc = "FZF: Lsp Type Defs" },
        { "<leader>ls", "<cmd>FzfLua lsp_document_symbols<cr>", desc = "FZF: Lsp Doc" },
        { "<leader>lf", "<cmd>FzfLua lsp_finder<cr>", desc = "FZF: Lsp Finder" },
    },
    opts = {
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
    },
}
