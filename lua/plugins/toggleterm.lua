return {
    "akinsho/toggleterm.nvim",
    version = "*",
    -- cmd = { "ToggleTerm", "ToggleTermToggleAll", "ToggleTermToggleAll" },
    config = function()
        local toggleterm = require("toggleterm")
        toggleterm.setup({
            size = function(term)
                if term.direction == "horizontal" then
                    return 15
                elseif term.direction == "vertical" then
                    return math.floor(vim.o.columns * 0.45)
                end
            end,
            open_mapping = [[<C-\>]],
            persist_size = false,
            start_in_insert = true,
            direction = "vertical",
        })

        local function set_opfunc(fn)
            -- store in global for Vim to call via v:lua
            _G.__toggleterm_send_op = fn
            vim.go.operatorfunc = "v:lua.__toggleterm_send_op"
        end

        local function send_trimmed_lines()
            local esc = vim.api.nvim_replace_termcodes("<esc>", true, false, true)
            vim.api.nvim_feedkeys(esc, "x", false)

            local start_line, _ = unpack(vim.api.nvim_buf_get_mark(0, "<"))
            local end_line, _ = unpack(vim.api.nvim_buf_get_mark(0, ">"))
            local lines = vim.fn.getline(start_line, end_line)

            local cmd = ""
            local indent = nil
            for _, line in ipairs(lines) do
                if indent == nil and line:find("[^%s]") ~= nil then
                    indent = line:find("[^%s]")
                end
                if not line:match("^%s*$") then
                    cmd = cmd .. line:sub(indent or 1) .. string.char(13)
                end
            end
            require("toggleterm").exec(cmd, 1)
        end

        -- Normal-mode keymaps for terminal management
        vim.keymap.set("n", [[<C-\>]], "<Cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
        vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Terminal Normal Mode" })

        -- Filetype-specific send mappings: disable trimming for Python
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "python",
            callback = function(args)
                local bufnr = args.buf
                -- send current line without trimming spaces

                vim.keymap.set("n", "<leader>tt", function()
                    set_opfunc(function(motion_type)
                        require("toggleterm").send_lines_to_terminal(motion_type, false, { args = vim.v.count })
                    end)
                    vim.api.nvim_feedkeys("g@_", "n", false)
                end)

                -- vim.keymap.set("n", "<leader>tt", function()
                --     require("toggleterm").send_lines_to_terminal("line", false, { args = vim.v.count })
                -- end, { buffer = bufnr, desc = "Send Line to Python REPL" })

                -- send visual selection without trimming spaces
                vim.keymap.set("v", "<leader>tv", function()
                    require("toggleterm").send_lines_to_terminal("visual_selection", false, { args = vim.v.count })
                end, { buffer = bufnr, desc = "Send Selection to Python REPL" })

                vim.keymap.set("v", "<leader>tl", function()
                    send_trimmed_lines()
                    -- require("toggleterm").send_lines_to_terminal("visual_lines", false, { args = vim.v.count })
                end, { buffer = bufnr, desc = "Send Lines to Python REPL" })
            end,
        })
    end,
}
