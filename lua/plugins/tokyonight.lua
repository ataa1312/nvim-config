return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    -- opts = {style = "day"},
    config = function()
        if vim.g.theme:find("tokyonight", 1, true) ~= nil then
            vim.cmd("colorscheme tokyonight-moon")
        end
    end,
}
