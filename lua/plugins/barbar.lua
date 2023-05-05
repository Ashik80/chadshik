require'barbar'.setup {
  sidebar_filetypes = {
    NvimTree = true,
    undotree = {text = 'undotree'},
    ['neo-tree'] = {event = 'BufWipeout'},
  },
}

vim.keymap.set("n", "<tab>", vim.cmd.BufferNext)
vim.keymap.set("n", "<S-tab>", vim.cmd.BufferPrevious)
vim.keymap.set("n", "<leader>x", vim.cmd.BufferClose)
