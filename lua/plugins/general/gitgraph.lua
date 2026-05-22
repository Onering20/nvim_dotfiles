return {
    'isakbm/gitgraph.nvim',
    dependencies = { 'sindrets/diffview.nvim' },
    ---@type I.GGConfig
    opts = {
        ---@type I.GGConfig
        git_cmd = "git",
        symbols = {
            merge_commit = '⊕', -- nf-cod-git_merge (U+EA68)
            commit = '●', -- U+25CF solid circle
            merge_commit_end = '◎', -- U+25CE bullseye circle
            commit_end = '○', -- U+25CB open circle
            -- Advanced symbols (standard Unicode box-drawing)
            GVER = '│', -- U+2502
            GHOR = '─', -- U+2500
            GCLD = '╮', -- U+256E rounded corner
            GCRD = '╭', -- U+256D rounded corner (unchanged)
            GCLU = '╯', -- U+256F rounded corner
            GCRU = '╰', -- U+2570 rounded corner
            GLRU = '┴', -- U+2534
            GLRD = '┬', -- U+252C
            GLUD = '┤', -- U+2524
            GRUD = '├', -- U+251C
            GFORKU = '╯', -- branch merging upward
            GFORKD = '╭', -- branch forking downward
            GRUDCD = '├', -- fallback, no exact Unicode equivalent
            GRUDCU = '├', -- fallback
            GLUDCD = '┤', -- fallback
            GLUDCU = '┤', -- fallback
            GLRDCL = '┬', -- fallback
            GLRDCR = '┬', -- fallback
            GLRUCL = '┴', -- fallback
            GLRUCR = '┴', -- fallback
        },
        format = {
            timestamp = '%H:%M:%S %d-%m-%Y',
            fields = { 'hash', 'timestamp', 'author', 'branch_name', 'tag' },
        },
        hooks = {
            on_select_commit = function(commit)
                print('selected commit:', commit.hash)
            end,
            on_select_range_commit = function(from, to)
                print('selected range:', from.hash, to.hash)
            end,
            -- Check diff of a commit
            on_select_commit = function(commit)
                vim.notify('DiffviewOpen ' .. commit.hash .. '^!')
                vim.cmd(':DiffviewOpen ' .. commit.hash .. '^!')
            end,
            -- Check diff from commit a -> commit b
            on_select_range_commit = function(from, to)
                vim.notify('DiffviewOpen ' .. from.hash .. '~1..' .. to.hash)
                vim.cmd(':DiffviewOpen ' .. from.hash .. '~1..' .. to.hash)
            end,
            -- disable listchars rendering in the gitgraph buffer
            on_open = function(buf_handle)
                vim.api.nvim_set_option_value('list', false, { buf = buf_handle })
            end,
        },
    },
    config = function(_, opts)
        require('gitgraph').setup(opts)

        vim.api.nvim_create_autocmd('FileType', {
            pattern = 'gitgraph',
            callback = function()
                vim.opt_local.list = false
                vim.keymap.set('n', 'q', '<cmd>tabclose<CR>', { buffer = true })
            end,
        })
    end,
    keys = {
        {
            "<leader>gl",
            function()
                vim.cmd('tabnew')
                require('gitgraph').draw({}, { all = true, max_count = 5000 })
            end,
            desc = "GitGraph - Draw",
        },
    },
}
