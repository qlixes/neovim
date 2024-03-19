local closebuffers = require("close_buffers")

closebuffers.setup({
    preserve_window_layout = { "this" },
})

vim.keymap.set("n", "<Leader>th", [[<CMD>lua require("close_buffers").delete({type = "hidden"})<CR>]],
    { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>tu", [[<CMD>lua require("close_buffers").delete({type = "nameless"})<CR>]],
    { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>tc", [[<CMD>lua require("close_buffers").delete({type = "this"})<CR>]],
    { noremap = true, silent = true })
