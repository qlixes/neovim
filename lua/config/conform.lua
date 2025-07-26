local conform = require("conform")

conform.setup({
    default_format_opts = {
        lsp_format = "fallback",
    },
    formatters_by_ft = {
        blade = {
            "blade-formatter",
        },
    },
    format_on_save = {
        timeout_ms = 2000,
        lsp_fallback = true,
        lsp_format = "fallback",
        async = false,
    },
})
