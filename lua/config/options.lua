vim.g.loaded_netrw = 1 
vim.g.loaded_netrwPlugin = 1
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.listchars = {
    -- eol = "↲",
    tab = ">-",
    trail = "-",
    nbsp = "+",
    multispace ="│   ",
    precedes = "«",
    extends = "»",
    }
vim.opt.list = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.rust_recommended_style = 0
vim.opt.showcmd = true
-- suggestions from UFO

-- Fold options
-- vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldinner: ,foldclose:]]
vim.o.fillchars = 'eob: ,fold: ,foldopen:,foldsep: ,foldclose:'
vim.o.foldcolumn = "auto:4" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.linebreak = false
vim.o.breakindent = true
vim.o.showbreak = '↳ '
vim.opt.cpoptions = "aABceFs_" --"aABceFs_"
-- vim.opt.backspace = {'indent', 'eol', 'start'}
