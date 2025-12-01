return {

    {
        "kevinhwang91/nvim-ufo",
        dependencies = {
            "kevinhwang91/promise-async",
            "luukvbaal/statuscol.nvim",
        },
        enabled = true,
        opts = {},
        keys = function()
            ufo = require("ufo")
            return {
                vim.keymap.set("n", "zR", ufo.openAllFolds, {desc = "Open all Folds", silent = true}),
                vim.keymap.set("n", "zM", ufo.closeAllFolds, {desc = "Close all Folds", silent = true})
            }
        end,
    }
}
