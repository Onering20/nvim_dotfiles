return {
-- Formatter / Linter
    {
        "stevearc/conform.nvim", 
        enabled = true,
        opts = {
            formatters_by_ft = {
                python = {
                    "black",
                    "isort"
                },
            },
        },
    },
}
