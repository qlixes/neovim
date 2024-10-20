-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- clear highlight on pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- vim.api.nvim_set_keymap('n', '<leader>n', ":bnext<CR>", { desc = "Go to next bufer" })
-- vim.api.nvim_set_keymap('n', '<leader>p', ":bprevious<CR>", { desc = "Go to previous bufer" })

