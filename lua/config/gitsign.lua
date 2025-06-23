local items = require("gitsigns")

items.setup({
    signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '-' },
        topdelete = { text = '=' },
        changedelete = { text = '#' },
    },
    on_attach = function(bufnr)
        vim.keymap.set('n', '[c', require('gitsigns').prev_hunk, { buffer = bufnr })
        vim.keymap.set('n', ']c', require('gitsigns').next_hunk, { buffer = bufnr })
    end,
})
