vim.pack.add({
    {src=utils.gh_url("folke/todo-comments.nvim"), name="todo-comments"}
})

require("todo-comments").setup()
