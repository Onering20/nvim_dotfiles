return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "mfussenegger/nvim-dap-python",
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
    },
    config = function()
        local dap = require("dap")
        require("dap-python").setup("uv")

        -- This repo's launch.json uses type = "debugpy".
        -- nvim-dap-python commonly registers the Python adapter as "python".
        if dap.adapters.python and not dap.adapters.debugpy then
            dap.adapters.debugpy = dap.adapters.python
        end

        vim.keymap.set("n", "<F5>", function() dap.continue() end)
        vim.keymap.set("n", "<F9>", function() dap.toggle_breakpoint() end)
        vim.keymap.set("n", "<F10>", function() dap.step_over() end)
        vim.keymap.set("n", "<F11>", function() dap.step_into() end)
        vim.keymap.set("n", "<F12>", function() dap.step_out() end)
    end,
}
