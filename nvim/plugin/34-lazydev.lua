vim.pack.add({
    { src = utils.gh_url("folke/lazydev.nvim"), name = "lazydev" },
})

vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*.lua" },
    callback = function(ev)
        require("lazydev").setup({
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        })
    end,
})

-- return {
--     ft = "lua", -- only load on lua files
--     opts = {
--     },
-- }
