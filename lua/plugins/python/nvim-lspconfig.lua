return {
-- LSP (Language Server Protocol)
    {
        "neovim/nvim-lspconfig", 
        enabled = true,
        config = function()
            vim.lsp.config("pyright",{
                root_pattern = {
                    ".git", "pyproject.toml", "setup.py", ".nvimproject"
                }
            })
        end
    },
}
