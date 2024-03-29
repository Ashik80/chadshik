vim.g.mapleader = " "

vim.keymap.set("n", "<leader>n", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<leader>fe", vim.cmd.EslintFixAll)
vim.keymap.set("n", "<esc>", vim.cmd.noh)

-- Buffer
vim.keymap.set("n", "<leader>x", [[:bd!<CR>]]);

-- Terminal
vim.keymap.set("n", "<leader>t", [[:belowright 15 split | term<CR>]])
vim.keymap.set("n", "<leader>ht", vim.cmd.close)
vim.keymap.set('t', 'xx', [[<C-\><C-n>]])
vim.keymap.set("n", "<leader>+", [[:resize +5<CR>]])
vim.keymap.set("n", "<leader>-", [[:resize -5<CR>]])

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Copy/paste
vim.keymap.set("v", "p", 'p:let @+=@0<CR>:let @"=@0<CR>')

-- navigate panes
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true })
