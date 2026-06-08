-- access to the parent directory

    vim.env.MYVIMDIR = vim.fn.stdpath("config")

-- Basic Settings

    require("config.options")
    require("config.keymaps")
    require("config.autocmds")
-- Load Lazy
    require("config.lazy")

-- Other Settings
    require("config.apperance")
