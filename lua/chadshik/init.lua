vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

require "chadshik.mappings"
require "plugins"

vim.cmd.colorscheme "catppuccin-mocha"
