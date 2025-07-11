local items = require("lazydev")

items.setup({
    library = {
        "lazy.nvim",
    },
    integrations = {
        lspconfig = true,
        cmp = true,
    }
})
