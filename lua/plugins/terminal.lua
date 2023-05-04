vim.o.hidden = true

require('nvim-terminal').setup()

vim.keymap.set('t', 'xx', [[<C-\><C-n>]])
