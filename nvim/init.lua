vim.g.theme = "tokyonight-moon"
require("config")
utils = require("utils")

vim.lsp.config("*", {
    capabilities = {
        textDocument = {
            semanticTokens = {
                multilineTokenSupport = true,
            },
        },
    },
    root_markers = { ".git" },
})

-- INFO: Lsps
local uv = vim.uv
local lsp_dir = uv.fs_opendir(vim.fn.stdpath("config") .. "/lsp/")

while true do
    local lsps = uv.fs_readdir(lsp_dir)
    if not lsps then
        break
    end
    for _, lsp in ipairs(lsps) do
        if lsp.type == "file" then
            local name = lsp.name:gsub("%.lua$", "")
            vim.lsp.enable(name)
        end
    end
end

uv.fs_closedir(lsp_dir)
