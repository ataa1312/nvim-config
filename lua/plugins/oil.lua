return {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        default_file_explorer = false,
        columns = {
            "icon",
            "permissions",
            "size",
            "mtime",
        },
        delete_to_trash = true,
        constrain_cursor = "name",
        keymaps = {
            ["<leader>?"] = { "actions.show_help", mode = "n" },
            ["<leader>x"] = { "actions.close", mode = "n" },
        },

        view_options = {
            show_hidden = true,
        },
    },
    dependencies = {
        { "echasnovski/mini.icons", opts = {} },
        { "nvim-tree/nvim-web-devicons" },
    },
    keys = {
        { "<leader>e", "<cmd>Oil<cr>", desc = "Open Oil" },
    },
    lazy = false,
}
