return {
    "echasnovski/mini.indentscope",
    version = "*",
    opts = {
        symbol = "|",
        draw = { delay = 100, priority = 2 },
    },
    config = function(_, opts)
        require("mini.indentscope").setup(opts)
    end,
}
