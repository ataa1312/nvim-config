vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = { severity = { min = vim.diagnostic.severity.ERROR } },
    signs = { severity = { min = vim.diagnostic.severity.WARN } },
})
