vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.hidden = true
vim.g.netrw_localcopydircmd = "cp -r"

-- Sets the cursor to be a block cursor even in insert mode
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20"

require "chadshik.mappings"
require "plugins"
require "chadshik.statusline"
require "chadshik.shoutout"

vim.cmd.colorscheme "rose-pine"
