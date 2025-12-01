return {

-- Syntax / Highlight
	{ 
        "nvim-treesitter/nvim-treesitter",
        enabled = true,
        branch = 'master',
        lazy = false,
        build = ":TSUpdate" ,
        opts = {
            ensure_installed = {
                "c",
                "cpp",
                "lua",
                "vim",
                "python",
                "javascript",
                "typescript",
                "html",
                "css",
                "json",
                "yaml",
                "markdown",
                "rust",
                -- Add more languages as needed
            },
            highlight = {
                enable = true, -- Enable syntax highlighting
            },
            indent = {
            enable = true, -- Enable indentation
            },  
        },
    },
}
