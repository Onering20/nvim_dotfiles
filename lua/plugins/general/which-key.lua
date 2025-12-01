return{

-- Command Hints
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        enabled = true,
        dependencies = {"nvim-mini/mini.nvim"},
        opts = {},
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false})
                end,
                desc = "Buffer Local Keymaps (which-key)"
            }
        }
    },
}
