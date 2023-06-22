return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    build = ":MasonUpdate",
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "tsserver",
                "tailwindcss",
                "lua_ls",
                "rust_analyzer",
                "bashls",
                "cssls",
                "denols",
                "dockerls",
                "eslint",
                "gopls",
                "html",
                "kotlin_language_server",
                "intelephense",
                "phpactor",
                "pylsp",
                "sqlls",
                "volar",
                "yamlls",
            },
            automatic_installation = true,
        })
    end
}
