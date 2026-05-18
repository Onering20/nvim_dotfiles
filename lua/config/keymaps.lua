vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true, desc = "[w]rite buffer" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { silent = true, desc = "[q]uit buffer" })
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { silent = true, desc = "Lazy GUI" })
vim.keymap.set('t', '<Esc><Esc>', [[<C-\><C-n>]], { noremap = true })
