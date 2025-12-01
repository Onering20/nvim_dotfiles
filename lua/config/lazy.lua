-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg"},
            { out, "WarningMsg" },
            { "\nPress any key to exit..."},
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct
 vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.g.python3_host_prog = "C:/Python314/python.exe"
-- Setup lazy.nvim
require("lazy").setup({
    spec = {
    -- import your plugins
        { import = "plugins.general"},
        { import = "plugins.python"},
    },
  -- Configure any other settings here. See the documentation for more details
  -- colorscheme that will be used when installing plugins
  -- install = { colorscheme = { "habamax" } },
  install = { colorscheme = { "zaibatsu" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
-- Fix Providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0
--vim.g.loaded_python3_provider = 0 -- Python installed


-- General Configs
  vim.cmd.colorscheme("zaibatsu")
  vim.api.nvim_set_hl(0, "Pmenu", { bg = "#596979" })
