local items = require("blink.cmp")

items.setup({
    completion = {
        documentation = {
            auto_show = true,
        },
    },
    sources = {
        default = {
            "lsp",
            "path",
            "snippets",
            "buffer",
        },
    },
    fuzzy = {
        implementation = "lua",
    },
})
