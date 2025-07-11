local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local vim_capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = require("blink.cmp").get_lsp_capabilities(vim_capabilities)

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        },
    },
})

mason_lspconfig.setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "ts_ls",
    },
    automatic_installation = false,
    handlers = {
        function(server_name)
            local server = servers[server_name] or {}

            server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilites or {})
            require('lspconfig')[server_name].setup(server)
        end,
    },
})
