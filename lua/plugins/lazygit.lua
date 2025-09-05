
return {{

        "kdheepak/lazygit.nvim",
        lazy = true,
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        dependancies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            {"<leader>lg","<cmd>LazyGit<cr>",desc = "LazyGit"},
        },
    },
}