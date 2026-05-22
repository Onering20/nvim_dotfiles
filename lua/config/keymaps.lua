vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true, desc = "[w]rite buffer" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { silent = true, desc = "[q]uit buffer" })
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { silent = true, desc = "Lazy GUI" })
vim.keymap.set('t', '<Esc><Esc>', [[<C-\><C-n>]], { noremap = true })

-- move line down
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==')
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')

-- move line down in insert mode
vim.keymap.set('i', '<A-Down>', '<Esc>:m .+1<CR>==gi')
vim.keymap.set('i', '<A-Up>', '<Esc>:m .-2<CR>==gi')
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi')

-- move selection down in visual mode
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")

local function clear_current_terminal()
    if vim.bo.buftype ~= "terminal" then
        return
    end

    local was_modifiable = vim.bo.modifiable
    vim.bo.modifiable = true
    vim.cmd([[silent keepjumps keeppatterns %s/.*//e]])
    vim.bo.modifiable = was_modifiable

    vim.api.nvim_win_set_cursor(0, { vim.api.nvim_buf_line_count(0), 0 })
end

vim.api.nvim_create_autocmd("TermOpen", {
    callback = function(args)
        vim.keymap.set({ "n" }, "<leader>Tc", clear_current_terminal, {
            buffer = args.buf,
            desc = "Clear terminal output",
        })
    end,
})
