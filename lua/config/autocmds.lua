
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank({ timeout = 200 })
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.py",
  command = "silent! Black", -- auto-format Python
})
