return{

-- Project root detection
    {
        "ahmedkhalf/project.nvim",
        enabled = true,
        depenancies = {
            "nvim-telescope/telescope.nvim"
        },
        opts = {
            detection_methods = {"pattern"},
            patterns = {
                ".git",
                "pyproject.toml",
                "setup.py",
                ".nvimproject",
            },
        },
        config = function(_,opts)
            require("telescope").load_extension("projects")
        end,
    },
}
