vim.g.theme = "tokyonight-moon"
require("config")
require("lsp")
  
vim.lsp.config('*', {
    capabilities = {
        textDocument = {
              semanticTokens = {
                    multilineTokenSupport = true,
            }
        }
    },
    root_markers = { '.git' },
})

  
