vim.g.mapleader = " "

vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<C-w>", ":q!<CR>")
vim.keymap.set("n", "<leader>fe", vim.cmd.EslintFixAll)

-- navigate panes
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true })
