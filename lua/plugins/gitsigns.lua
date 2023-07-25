require('gitsigns').setup {
  signs = {
    add          = { text = '+' },
    change       = { text = '~' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  }
}

vim.keymap.set("n", "<leader>gb", [[:Gitsigns blame_line<CR>]])
vim.keymap.set("n", "<leader>gtb", [[:Gitsigns toggle_current_line_blame<CR>]])
vim.keymap.set("n", "<leader>gd", [[:Gitsigns diffthis<CR>]])
vim.keymap.set("n", "<leader>gh", [[:Gitsigns preview_hunk<CR>]])
