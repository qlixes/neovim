local indentline = require("ibl")

indentline.setup({
    scope = { show_start = false, show_end = false },
    exclude = {
      filetypes = {
        "help",
        "alpha",
        "Trouble",
        "trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
      },
    },
})
