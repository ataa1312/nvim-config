vim.pack.add({
    {
        src = utils.gh_url("nvim-treesitter/nvim-treesitter"),
        name = "treesitter",
        version = "main",
    },
    {
        src = utils.gh_url("nvim-treesitter/nvim-treesitter-textobjects"),
        name = "treesitter-textobjects",
        version = "main",
    },
})

vim.api.nvim_create_autocmd("PackChanged", {
    callback = function(ev)
        if ev.data.spec.name == "treesitter" and ev.data.kind == "update" then
            if not ev.data.active then
                vim.cmd.packadd("treesitter")
            end
            vim.cmd("TSUpdate")
        end
    end,
})

local languages = {
    "bash",
    "c",
    "css",
    "diff",
    "dockerfile",
    "gitignore",
    "graphql",
    "html",
    "javascript",
    "jsdoc",
    "json",
    "lua",
    "luadoc",
    "luap",
    "markdown",
    "markdown_inline",
    "nu",
    "printf",
    "python",
    "query",
    "regex",
    "sql",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "vimdoc",
    "xml",
    "yaml",
}

local ts = require("nvim-treesitter")
for _, lang in ipairs(languages) do
    if not pcall(vim.treesitter.language.inspect, lang) then
        ts.install(lang)
    end
end

vim.api.nvim_create_autocmd("FileType", {
    callback = function(ev)
        if ev.match == "latex" then
            return
        end
        pcall(vim.treesitter.start, ev.buf)
    end,
})

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
