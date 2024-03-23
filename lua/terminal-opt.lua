local toggleterm = require("toggleterm")
toggleterm.setup({
    shell = vim.o.shell,
    auto_scroll = true,
    open_mapping = [[<c-\>]],
    close_on_exit = true,
    hide_numbers = true,
    direction = "float",
})
