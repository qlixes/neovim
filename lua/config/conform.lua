local conform = require("conform")

conform.setup({
    default_format_opts = {
        lsp_format = "fallback",
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
        async = false,
    },
})

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function(args)
        vim.lsp.buf.format({
            async = false,
        })

        require("conform").format({
            bufnr = args.buf,
        })

        require("lint").try_lint()
    end,
})
