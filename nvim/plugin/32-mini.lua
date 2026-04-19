vim.pack.add({
    {
        src = utils.gh_url("echasnovski/mini.indentscope"),
        name = "mini-indentscope",
        version = vim.version.range("*"),
    },
    {
        src = utils.gh_url("echasnovski/mini.pairs"),
        name = "mini-pairs",
        version = vim.version.range("*"),
    },
    {
        src = utils.gh_url("echasnovski/mini.surround"),
        name = "mini-surround",
    },
})

require("mini.indentscope").setup({
    symbol = "|",
    draw = { delay = 100, priority = 2 },
})

require("mini.pairs").setup({
    -- In which modes mappings from this `config` should be created
    modes = { insert = true, command = false, terminal = false },

    -- Global mappings. Each right hand side should be a pair information, a
    -- table with at least these fields (see more in |MiniPairs.map|):
    -- - <action> - one of 'open', 'close', 'closeopen'.
    -- - <pair> - two character string for pair to be used.
    -- By default pair is not inserted after `\`, quotes are not recognized by
    -- `<CR>`, `'` does not insert pair after a letter.
    -- Only parts of tables can be tweaked (others will use these defaults).
    mappings = {
        [")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." },
        ["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]." },
        ["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." },
        ["["] = {
            action = "open",
            pair = "[]",
            neigh_pattern = ".[%s%z%)}%]]",
            register = { cr = false },
            -- foo|bar -> press "[" -> foo[bar
            -- foobar| -> press "[" -> foobar[]
            -- |foobar -> press "[" -> [foobar
            -- | foobar -> press "[" -> [] foobar
            -- foobar | -> press "[" -> foobar []
            -- {|} -> press "[" -> {[]}
            -- (|) -> press "[" -> ([])
            -- [|] -> press "[" -> [[]]
        },
        ["{"] = {
            action = "open",
            pair = "{}",
            -- neigh_pattern = ".[%s%z%)}]",
            neigh_pattern = ".[%s%z%)}%]]",
            register = { cr = false },
            -- foo|bar -> press "{" -> foo{bar
            -- foobar| -> press "{" -> foobar{}
            -- |foobar -> press "{" -> {foobar
            -- | foobar -> press "{" -> {} foobar
            -- foobar | -> press "{" -> foobar {}
            -- (|) -> press "{" -> ({})
            -- {|} -> press "{" -> {{}}
        },
        ["("] = {
            action = "open",
            pair = "()",
            -- neigh_pattern = ".[%s%z]",
            neigh_pattern = ".[%s%z%)]",
            register = { cr = false },
            -- foo|bar -> press "(" -> foo(bar
            -- foobar| -> press "(" -> foobar()
            -- |foobar -> press "(" -> (foobar
            -- | foobar -> press "(" -> () foobar
            -- foobar | -> press "(" -> foobar ()
        },
        -- Single quote: Prevent pairing if either side is a letter
        ['"'] = {
            action = "closeopen",
            pair = '""',
            neigh_pattern = "[^%w\\][^%w]",
            register = { cr = false },
        },
        -- Single quote: Prevent pairing if either side is a letter
        ["'"] = {
            action = "closeopen",
            pair = "''",
            neigh_pattern = "[^%w\\][^%w]",
            register = { cr = false },
        },
        -- Backtick: Prevent pairing if either side is a letter
        ["`"] = {
            action = "closeopen",
            pair = "``",
            neigh_pattern = "[^%w\\][^%w]",
            register = { cr = false },
        },
    },
})

require("mini.surround").setup({
    mappings = {
        add = "gsa",
        delete = "gsd",
        find = "gsf",
        find_left = "gsF",
        highlight = "gsh",
        replace = "gsr",
        update_n_lines = "gsn",
    },
})
