return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "nvim-neotest/neotest-python",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            local root = "/home/johnpuhr/src/Shopfloor_2.0"

            vim.env.UV_CACHE_DIR = root .. "/.uv-cache"
            vim.env.UV_LINK_MODE = "copy"

            require("neotest").setup({
                adapters = {
                    require("neotest-python")({
                        dap = { justMyCode = false },
                        runner = "pytest",
                        python = { "uv", "run", "python" },

                        is_test_file = function(file_path)
                            local path = vim.fn.fnamemodify(file_path, ":p")
                            local name = vim.fn.fnamemodify(path, ":t")
                            return vim.startswith(path, root .. "/tests/")
                                and name:match("^test_.*%.py$") ~= nil
                        end,
                    }),
                },
                run = {
                    augment = function(_, args)
                        args.cwd = root
                        args.env = vim.tbl_extend("force", args.env or {}, {
                            UV_CACHE_DIR = root .. "/.uv-cache",
                            UV_LINK_MODE = "copy",
                            TEMP = root .. "/.tmp",
                            TMP = root .. "/.tmp",
                        })
                        return args
                    end,
                },
            })
        end,
        keys = {
            { "<leader>tc", function() require("neotest").run.run() end,                                         desc = "Run Nearest Test" },
            { "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%:p")) end,                     desc = "Run File" },
            { "<leader>ta", function() require("neotest").run.run("/home/johnpuhr/src/Shopfloor_2.0/tests") end, desc = "Run Test Suite" },
            { "<leader>ts", function() require("neotest").summary.toggle() end,                                  desc = "Toggle Test Summary" },
            { "<leader>to", function() require("neotest").output.open({ enter = true }) end,                     desc = "Show Test Output" },
        },
    },
}
