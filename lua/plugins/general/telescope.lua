return {
    -- Fuzzy Finder
    {
        "nvim-telescope/telescope.nvim",
        enabled = true,
        dependencies = {
            "nvim-lua/plenary.nvim" },
        opts = {},
        keys = {
            {
                "<leader>ff",
                ":Telescope find_files<CR>",
                silent = true,
                desc = "Telescope [f]iles"
            },
        },
    },
}
