return {
    {
        "steelsojka/pears.nvim",
        enabled = true,
        opts = {},
        config = function()
            local pears = require("pears")
            pears.setup(function(conf)
                conf.pair("{","}")
            end)
        end,
    },
}
