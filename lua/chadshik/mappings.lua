vim.g.mapleader = " "

vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<C-w>", ":q!<CR>")
vim.keymap.set("n", "<leader>fe", vim.cmd.EslintFixAll)
vim.keymap.set("n", "<esc>", vim.cmd.noh)

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Copy/paste
vim.keymap.set("n", "yy", '"+yy')
vim.keymap.set("v", "y", '"+y')
vim.keymap.set("n", "dd", '"+dd')
vim.keymap.set("v", "d", '"+d')
vim.keymap.set("n", "p", '"+p')
vim.keymap.set("v", "p", '"_d"+P')
vim.keymap.set("n", "P", '"+P')

-- navigate panes
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true })
