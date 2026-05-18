return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && npm install && git restore .",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }

        -- Automatically conceal links when opening markdown files
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "markdown",
            callback = function()
                vim.opt_local.conceallevel = 2 -- 2 hides URLs; 3 hides syntax completely
            end,
        })
    end,
    ft = { "markdown" },
}
