return {
  "saghen/blink.cmp",
  -- optional: provides snippets for the snippet source
  -- dependencies = { "rafamadriz/friendly-snippets" },
  version = "1.*",
  opts = {
    -- "default" (recommended) for mappings similar to built-in completions (C-y to accept)
    -- "super-tab" for mappings similar to vscode (tab to accept)
    -- "enter" for enter to accept
    -- "none" for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    --
    -- See :h blink-cmp-config-keymap for defining your own keymap
    keymap = {
        preset = "none",
        ['<C-h>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-e>'] = { 'hide' },
        ['<C-y>'] = { 'select_and_accept' },
        ['<C-n>'] = { 'cancel' },

        -- ['<C-k>'] = { 'select_prev', 'fallback' },
        -- ['<C-j>'] = { 'select_next', 'fallback' },
        ['<C-k>'] = { 'select_prev', 'fallback_to_mappings' },
        ['<C-j>'] = { 'select_next', 'fallback_to_mappings' },

        ['<C-u>'] = { 'scroll_documentation_up', 'fallback' },
        ['<C-d>'] = { 'scroll_documentation_down', 'fallback' },

        ['<Tab>'] = { 'snippet_forward', 'fallback' },
        ['<S-Tab>'] = { 'snippet_backward', 'fallback' },

        ['<C-s>'] = { 'show_signature', 'hide_signature', 'fallback' },},
    appearance = { nerd_font_variant = "mono" },
    completion = { documentation = { auto_show = false } },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
    signature = { enabled = true},
  },
  opts_extend = { "sources.default" }
}
