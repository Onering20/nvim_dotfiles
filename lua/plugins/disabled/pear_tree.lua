return {
    {

        "tmsvg/pear-tree",
        enabled = true,
        event = "InsertEnter", -- lazy-load when you start typing
        config = function()
            -- Example settings
            vim.g.pear_tree_smart_openers = 1
            vim.g.pear_tree_smart_closers = 1
            -- vim.g.pear_tree_smart_backspace = 1
            vim.g.pear_tree_repeatable_expand = 0
        end,
    },
}
