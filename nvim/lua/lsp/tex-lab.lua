vim.lsp.enable("texlab")
vim.lsp.config["texlab"] = {
    filetypes = { "tex" },
    root_markers = { "main.tex" },
    settings = {
        texlab = {
            build = {
                useFileList = true,
            },
        },
    },
}
