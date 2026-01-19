return {
    {

        "Dax89/automaton.nvim",
        dependancies = {
            {"nvim-lua/plenary.nvim"},
            {"nvim-telescope/telescope.nvim"},
            {"mfussengegger/nvim-dap"},
            {"hrsh7th/nvim-cmp"},
            {"L3MON4D3/LuaSnip"},
        },
--[[        cmd = {
            "Automaton create",        -- Create a new workspace
            "Automaton recents",       -- Shows recent workspaces
            "Automaton init",          -- Initializes a workspace in "cwd"
            "Automaton load",          -- Loads a workspace in "cwd"
            "Automaton workspaces",    -- Manage loaded workspaces
            "Automaton jobs",          -- Shows running tasks/launch (can be killed too)
            "Automaton config",        -- Show/Edit workspace settings
            "Automaton tasks default", -- Exec default task
            "Automaton tasks",         -- Select and exec task
            "Automaton launch default",-- Exec default launch configuration
            "Automaton launch",        -- Select and exec a launch configuration
            "Automaton debug default", -- Debug default launch configuration
            "Automaton debug",         -- Select and debug a launch configuration
            "Automaton open launch",   -- Open workspace's launch.json
            "Automaton open tasks",    -- Open workspace's tasks.json
            "Automaton open variables",-- Open workspace's variables.json
            "Automaton open config",   -- Open workspace's config.json
        },
--]]
      keys = {
            
            { "<F5>", "<CMD>Automaton launch default<CR>", desc = "Automaton launch default"},
            { "<F6>", "<CMD>Automaton debug default<CR>", desc = "Automaton debug default"},
            { "<F8>", "<CMD>Automaton tasks default<CR>", desc = "Automaton tasks default"},

            { "<leader>aC", "<CMD>Automaton create<CR>", desc = "Automaton create"},
            { "<leader>aI", "<CMD>Automaton init<CR>", desc = "Automaton init"},
            { "<leader>aL", "<CMD>Automaton load<CR>", desc = "Automaton load"},

            { "<leader>ac", "<CMD>Automaton config<CR>", desc = "Automaton config"},
            { "<leader>ar", "<CMD>Automaton recents<CR>", desc = "Automaton recents"},
            { "<leader>aw", "<CMD>Automaton workspaces<CR>", desc = "Automaton workspaces"},
            { "<leader>aj", "<CMD>Automaton jobs<CR>", desc = "Automaton jobs"},
            { "<leader>al", "<CMD>Automaton launch<CR>", desc = "Automaton launch"},
            { "<leader>ad", "<CMD>Automaton debug<CR>", desc = "Automaton debug"},
            { "<leader>at", "<CMD>Automaton tasks<CR>", desc = "Automaton tasks"},

            { "<leader>aol", "<CMD>Automaton open launch<CR>", desc = "Automaton open launch"},
            { "<leader>aov", "<CMD>Automaton open variables<CR>", desc = "Automaton open variables"},
            { "<leader>aot", "<CMD>Automaton open tasks<CR>", desc = "Automaton open tasks"},
            { "<leader>aoc", "<CMD>Automaton open config<CR>", desc = "Automaton open config"},
        
            {"<F5>", "<CMD><C-U>Automaton launch default<CR>", mode = "v", desc = "Automaton launch default"},
            {"<F6>", "<CMD><C-U>Automaton debug default<CR>", mode = "v", desc = "Automaton debug default"},
            {"<F8>", "<CMD><C-U>Automaton tasks default<CR>", mode = "v", desc = "Automaton tasks default"},
            {"<leader>al", "<CMD><C-U>Automaton launch<CR>", mode = "v", desc = "Automaton launch"},
            {"<leader>ad", "<CMD><C-U>Automaton debug<CR>", mode = "v", desc = "Automaton debug"},
            {"<leader>at", "<CMD><C-U>Automaton tasks<CR>", mode = "v", desc = "Automaton tasks"},


        },

    }

}
