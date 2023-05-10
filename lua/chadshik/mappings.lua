vim.g.mapleader = " "

vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<C-q>", [[:q!<CR>]])
vim.keymap.set("n", "<leader>fe", vim.cmd.EslintFixAll)
vim.keymap.set("n", "<esc>", vim.cmd.noh)

-- Terminal
vim.keymap.set("n", "<leader>t", [[:belowright 15 split term://bash<CR>]])
vim.keymap.set("n", "<leader>ht", vim.cmd.close)
vim.keymap.set('t', 'xx', [[<C-\><C-n>]])
vim.keymap.set("n", "<leader>+", [[:resize +5<CR>]])
vim.keymap.set("n", "<leader>-", [[:resize -5<CR>]])

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

-- Git
vim.keymap.set("n", "<leader>gb", [[:Gitsigns blame_line<CR>]])
vim.keymap.set("n", "<leader>gtb", [[:Gitsigns toggle_current_line_blame<CR>]])
vim.keymap.set("n", "<leader>gd", [[:Gitsigns diffthis<CR>]])
