local items = require("fzf-lua")

items.setup({
    "fzf-vim",
    files = {
        cmd =
        "rg --files --no-hidden --follow --no-ignore-exclude --no-ignore-global --no-ignore-dot --no-ignore-files --no-ignore-vcs --smart-case -g '!{.git,node_modules,vendor,generated}/'",
    },
    git = {
        file_icons = true,
    },
})

vim.keymap.set('n', '<leader>ff', '<cmd>FzfLua files<CR>', { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fb', '<cmd>FzfLua buffers<CR>', { desc = 'Telescope find buffers' })
vim.keymap.set('n', '<leader>fq', '<cmd>FzfLua quickfix<CR>', { desc = 'Telescope find quickfix' })
vim.keymap.set('n', '<leader>fl', '<cmd>FzfLua loclist<CR>', { desc = 'Telescope find loclist' })
vim.keymap.set('n', '<leader>fg', '<cmd>FzfLua git_status<CR>', { desc = 'Telescope find git_status' })
vim.keymap.set('n', '<leader>dd', '<cmd>FzfLua diagnostics_document<CR>', { desc = 'Telescope document_diagnostics' })
vim.keymap.set('n', '<leader>ld', '<cmd>FzfLua lsp_document_diagnostics<CR>',
    { desc = 'Telescope lsp_document_diagnostics' })
