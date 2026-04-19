vim.pack.add({
    { src = utils.gh_url("MeanderingProgrammer/render-markdown.nvim"), name = "render-markdown" },
})

require("render-markdown").setup({
    ---@module "render-markdown"
    ---@type render.md.UserConfig
    completions = {
        -- lsp = { enabled = true },
        blink = { enabled = true },
    },
    pipe_table = {
        cell = "trimmed",
    },
}
)
