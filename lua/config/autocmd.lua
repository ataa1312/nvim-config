vim.api.nvim_create_autocmd({ "TextYankPost" }, {
    group = vim.api.nvim_create_augroup("highlight-yank", {
        clear = true,
    }),
    desc = "Highlight yanked text",
    callback = function()
        vim.hl.on_yank()
    end,
})
