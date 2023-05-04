require'barbar'.setup {
  sidebar_filetypes = {
    -- Use the default values: {event = 'BufWinLeave', text = nil}
    NvimTree = true,
    -- Or, specify the text used for the offset:
    undotree = {text = 'undotree'},
    -- Or, specify the event which the sidebar executes when leaving:
    ['neo-tree'] = {event = 'BufWipeout'},
    -- Or, specify both
    -- Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
  },
}

vim.keymap.set("n", "<tab>", vim.cmd.BufferNext)
vim.keymap.set("n", "<S-tab>", vim.cmd.BufferPrevious)
vim.keymap.set("n", "<leader>x", vim.cmd.BufferClose)
