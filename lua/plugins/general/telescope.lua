return {
    -- Fuzzy Finder
    {
        "nvim-telescope/telescope.nvim",
        enabled = true,
        dependencies = {
            "nvim-lua/plenary.nvim"},
        opts = {},
        keys = {
            {
                "<leader>f",
                ":Telescope find_files<CR>",
                silent = true,
                desc = "Telescope [f]iles"
            },
        },
    },
}
