vim.pack.add({
    { src = utils.gh_url("stevearc/oil.nvim"), name = "oil" },
})

require("oil").setup({
    default_file_explorer = true,
    columns = {
        "icon",
        "permissions",
        "size",
        "mtime",
    },
    delete_to_trash = true,
    constrain_cursor = "name",
    keymaps = {
        ["<C-s>"] = false,
        ["<C-h>"] = false,
        ["<C-l>"] = false,
        ["<leader>?"] = { "actions.show_help", mode = "n" },
        ["<leader>x"] = { "actions.close", mode = "n" },
        ["<C-r>"] = "actions.refresh",
        ["%"] = { "actions.select", opts = { vertical = true } },
        ['"'] = { "actions.select", opts = { horizontal = true } },
        ["<C-j>"] = { "actions.preview_scroll_down", mode = "n" },
        ["<C-k>"] = { "actions.preview_scroll_up", mode = "n" },
    },

    view_options = {
        show_hidden = true,
    },
})

vim.keymap.set("n", "<leader>e", function()
    require("oil").open()
end, { desc = "Open Oil" })

-- return {
--     "stevearc/oil.nvim",
--     ---@module 'oil'
--     ---@type oil.SetupOpts
--     opts = {
--         },
--     },
--     dependencies = {
--         { "echasnovski/mini.icons", opts = {} },
--         { "nvim-tree/nvim-web-devicons" },
--     },
--     lazy = false,
-- }
