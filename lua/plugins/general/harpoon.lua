return {

    {
        "thePrimeagen/harpoon",
        enabled = true,
        branch = "harpoon2",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "folke/which-key.nvim"
        },
        opts = {},
        config = function()


            -- basic telescope configuration
            local conf = require("telescope.config").values
            local function toggle_telescope(harpoon_files)
                local file_paths = {}
                for _, item in ipairs(harpoon_files.items) do
                    table.insert(file_paths, item.value)
                end

                require("telescope.pickers").new({}, {
                    prompt_title = "Harpoon",
                    finder = require("telescope.finders").new_table({
                        results = file_paths,
                    }),
                    previewer = conf.file_previewer({}),
                    sorter = conf.generic_sorter({}),
                }):find()
            end
        end,
        keys = function ()
            local harpoon = require('harpoon')
            local harpoon_list = harpoon:list()
            local harpoon_keys = {
                {"<leader>a", function() harpoon_list:add() end, desc = "Harpoon: add"},
                {"<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon_list) end, desc = "Harpoon: Show List"},

                {"<leader>1", function() harpoon_list:select(1) end, desc = "Harpoon: Switch 1"},
                {"<leader>2", function() harpoon_list:select(2) end, desc = "Harpoon: Switch 2"},
                {"<leader>3", function() harpoon_list:select(3) end, desc = "Harpoon: Switch 3"},
                {"<leader>4", function() harpoon_list:select(4) end, desc = "Harpoon: Switch 4"},

                -- Toggle previous & next buffers stored within Harpoon list
                {"<leader>]", function() harpoon_list:prev() end, desc = "Harpoon: Switch Next"},
                {"<leader>[", function() harpoon_list:next() end, desc = "Harpoon: Switch Previous"},
            }
            return harpoon_keys
        end,
    }

}
