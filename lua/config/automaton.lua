
require("automaton").setup({
    debug = false,
    saveall = true,
    ignore_ft = { },

    terminal = {
        position = "botright",
        size = 10,
    },

    integrations = {
        luasnip = false,
        cmp = false,
        cmdcolor = require("automaton.utils").colors.yellow,
    },
    
    icons = {
        buffer = "",
        close = "",
        launch = "",
        task = "",
        workspace = "",
    },
    
    events = {
        workspacechanged = function(ws)
          -- "ws" is the current workspace object (can be nil)
        end
    }
})
