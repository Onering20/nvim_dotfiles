return {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewFileHistory' },
    keys = {
        { '<leader>gd', '<cmd>DiffviewOpen<CR>',                desc = 'Diffview - Open' },
        { '<leader>gh', '<cmd>DiffviewFileHistory %<CR>',        desc = 'Diffview - File history' },
        { '<leader>gH', '<cmd>DiffviewFileHistory<CR>',          desc = 'Diffview - Repo history' },
    },
    opts = {
        enhanced_diff_hl = true,
        view = {
            default = {
                layout = 'diff2_horizontal',
            },
            merge_tool = {
                layout = 'diff3_mixed',  -- the inline mixed highlight view for conflicts
            },
        },
    },
    config = function(_, opts)
        require('diffview').setup(opts)

        -- q to close from any diffview window
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { 'DiffviewFiles', 'DiffviewFileHistory', 'DiffviewDiff' },
            callback = function()
                vim.keymap.set('n', 'q', '<cmd>DiffviewClose<CR>', { buffer = true })
            end,
        })
    end,
}
