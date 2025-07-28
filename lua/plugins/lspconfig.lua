return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        local util = require("lspconfig.util")

        local on_attach = function(client, bufnr)
            local bufmap = function(mode, lhs, rhs, desc)
                if type(rhs) ~= "function" then
                    vim.notify(string.format("LSP map %q -> %q is %s", lhs, desc, type(rhs)), vim.log.levels.ERROR)
                    return
                end
                vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, noremap = true, silent = true, desc = desc })
            end

            bufmap("n", "K", vim.lsp.buf.hover, "Hover Docs")
            bufmap("n", "<C-k>", vim.lsp.buf.signature_help, "Signature Help")

            local fzf = require("fzf-lua")

            bufmap("n", "<leader>gd", fzf.lsp_definitions, "FZF: Go to Definition")
            bufmap("n", "<leader>gD", fzf.lsp_declarations, "FZF: Go to Declaration")
            bufmap("n", "<leader>gi", fzf.lsp_implementations, "FZF: Go to Implementation")
            bufmap("n", "<leader>gr", fzf.lsp_references, "FZF: Go to References")
            if client.name == "pyright" then
                -- bufmap("n", "<leader>K", fzf.lsp_hover, "FZF: Hover Docs")
                -- bufmap("n", "<C-k>", fzf.lsp_signature_help, "FZF: Signature Help")
                -- bufmap("n", "<leader>rn", fzf.lsp_rename, "FZF: Rename Symbol")
                -- bufmap("n", "<leader>ca", fzf.lsp_range_code_actions, "FZF: Code Actions")
            end
        end

        lspconfig.basedpyright.setup({
            root_dir = util.root_pattern({
                "pyproject.toml",
                ".git",
            }),
            on_attach = on_attach,
            settings = {
                python = {
                    analysis = {
                        typeCheckingMode = "basic",
                        autoSearchPaths = true,
                        verboseOutput = true,
                        -- useLibraryCodeForTypes = true,
                    },
                },
            },
        })
        lspconfig.texlab.setup({})
    end,
}
