return {

    {
        "oysandvik94/curl.nvim",
        cmd = {"CurlOpen"},
        enabled = true,
        dependancies = {
            "nvim-lua/plenary.nvim",
        },
        config = true,
        keys = {
            {
                "<leader>cc",
                function()
                    require("curl").open_curl_tab()
                end,
                desc = "Open a curl tab scoped to current working directory",
            },
            {
                "<leader>co",
                function()
                    require("curl").open_global_tab()
                end,
                desc = "Open a curl tab with a global scope",
            },
            {
                "<leader>csc",
                function()
                    require("curl").create_scoped_collection()
                end,
                desc = "Create or open a collection with a name from user input",
            },
            {
                "<leader>cgc",
                function()
                    require("curl").create_global_collection()
                end,
                desc = "Create or open a global collection with a name from user input",
            },
            {
                "<leader>fsc",
                function()
                    require("curl").pick_scoped_collection()
                end,
                desc = "Choose a scoped collection and open it",
            },
            {
                "<leader>fgc",
                function()
                    require("curl").pick_global_collection()
                end,
                desc = "Choose a global collection and open it",
            },
        }
    }

}
