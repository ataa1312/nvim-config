return {
    "christoomey/vim-tmux-navigator",
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
        "TmuxNavigatorProcessList",
    },
    keys = {
        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>", "Window left" },
        { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>", "Window down" },
        { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>", "Window up" },
        { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>", "Window right"  },
        { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", "Previous Window" },
    },
}
