return{

-- Wezterm Integration
    {
        "willothy/wezterm.nvim",
        enabled = true,
        lazy = false,
        opts = {},
        --[[ config = function()
            local wezterm = require('wezterm')
            local mux = wezterm.mux

            wezterm.on('gui-startup', function(cmd)
                if cmd.args[1] == 'nvim' then
                    local tab, pane, window = mux.spawn_window(cmd or {})
                    window:gui_window():maximize()
                end
            end)
        end, ]]
    },


}
