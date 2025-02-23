local items = require("nvim-treesitter")

items.setup({
    sync_install = false,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
    autotag = {
        enable = true,
    },
})
