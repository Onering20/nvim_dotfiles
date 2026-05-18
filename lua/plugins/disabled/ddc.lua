return {
    {
        "Shougo/ddc.vim",
        enabled = true,
        dependencies = {
            {"Shougo/pum.vim", lazy = false},
            {"Shougo/ddc-ui-pum", lazy = false},
            "Shougo/ddc-source-around",
            "matsui54/ddc-source-buffer",
            "Shougo/ddc-path",
            "Shougo/ddc-source-nvim-lsp",
            "Shougo/ddc-filter-matcher_head",
            "Shougo/ddc-filter-sorter_rank",
            {"vim-denops/denops.vim", lazy = false},
        },
        -- event = "InsertEnter",
        opts = {},
        config = function()
            vim.g.denops_server_addr = "127.0.0.1:32123"
            vim.fn["ddc#custom#patch_global"]("ui", "pum")
            -- vim.fn["ddc#custom#patch_global"]("completionMenu","pum")
            -- Sources
            vim.fn["ddc#custom#patch_global"]("sources", {
                -- "nvim-lsp",
                "around",
                "buffer",
                "path",
            })
            -- Source options
            vim.fn["ddc#custom#patch_global"]("sourceOptions", {
                _ = {
                    matchers = {"matcher_head"},
                    sorters = {"sorter_rank"},
                    converters = {},
                    timeout = 200,
                },
                -- ["nvim-lsp"] = { mark = "[lsp]" },
                around = { mark = "[A]" },
                buffer = { mark = "[B]" },
                path   = { mark = "[P]" },
            })
            -- Enable DDC
            --[[ vim.api.nvim_create_autocmd("InsertEnter", {
                once = true,
                callback = function()
                    vim.fn["ddc#enable"]()
                end,
            }) ]]
            vim.fn["ddc#enable"]()
        end,
        keys = {
            {
                "<C-Space>",
                function()
                    vim.fn["ddc#map#manual_complete"]()
                end,
                expr = false,
                mode = {"i"},
                silent = true,
                desc = "ddc Manual complete"
            },
            {
                "<Tab>",
                function()
                    return vim.fn["pum#visible"]() == 1 and "<Cmd>call pum#map#confirm()<CR>" or "<Tab>" 
                end,
                expr = true,
                mode = {"i"},
                silent = true,
                desc = "Accept autocomplete",
            },
            {
                "<C-n>",
                "<Cmd>call pum#map#select_relative(+1)<CR>",
                mode = {"i"},
                silent = true,
                desc = "Select next autocomplete",
            },
            {
                "<C-p>",
                "<Cmd>call pum#map#select_relative(-1)<CR>",
                mode = {"i"},
                silent = true,
                desc = "Select previous autocomplete"
            },
        }
    }
}
