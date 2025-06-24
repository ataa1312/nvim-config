return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")

        local on_attach = function(client, bufnr)
            local bufmap = function(mode, lhs, rhs, desc)
                vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, noremap = true, silent = true, desc = desc })
            end

            bufmap("n", "gd", vim.lsp.buf.definition, "Go to Definition")
            bufmap("n", "gD", vim.lsp.buf.declaration, "Go to Declaration")
            bufmap("n", "gi", vim.lsp.buf.implementation, "Go to Implementation")
            bufmap("n", "gr", vim.lsp.buf.references, "Go to References")
            bufmap("n", "K", vim.lsp.buf.hover, "Hover Docs")
            bufmap("n", "<C-k>", vim.lsp.buf.signature_help, "Signature Help")
            bufmap("n", "<leader>rn", vim.lsp.buf.rename, "Rename Symbol")
            bufmap("n", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
            -- bufmap("n", "<leader>f", function()
            --     vim.lsp.buf.format({ async = true })
            -- end, "Format Buffer")

            local fzf = require("fzf-lua")
            bufmap("n", "<leader>gd", fzf.lsp_definitions, "FZF: Go to Definition")
            bufmap("n", "<leader>gr", fzf.lsp_references, "FZF: Go to References")
        end

        lspconfig.pyright.setup({
            on_attach = on_attach,
        })
    end,
}
