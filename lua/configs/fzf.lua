require('fzf-lua').setup({'fzf-vim'})


vim.keymap.set('n', '<leader>ff', '<cmd>FzfLua files<CR>', { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fb', '<cmd>FzfLua buffers<CR>', { desc = 'Telescope find buffers' })
vim.keymap.set('n', '<leader>fq', '<cmd>FzfLua quickfix<CR>', { desc = 'Telescope find quickfix' })
vim.keymap.set('n', '<leader>fl', '<cmd>FzfLua loclist<CR>', { desc = 'Telescope find loclist' })
vim.keymap.set('n', '<leader>fg', '<cmd>FzfLua git_status<CR>', { desc = 'Telescope find git status' })
