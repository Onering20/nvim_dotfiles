return {
-- Completion
    {
        "hrsh7th/nvim-cmp",
        dependancies = {
            "hrsh7th/cmp-nvim-lsp",
            "L3MON4D3/LuaSnip"
        },
        enabled = true,
        config = function()
            local cmp = require("cmp")
            cmp.setup({
                snippet = {
                    expand = function(args) 
                        require("luasnip").lsp_expand(args.body) 
                    end
                },
                mapping = cmp.mapping.preset.insert({
                    ["<CR>"] = cmp.mapping.confirm({ select = true}),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                }),
            })
        end
    },
}
