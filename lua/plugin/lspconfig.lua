return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
            "saghen/blink.cmp",
            version = "1.*",
            dependencies = {
                "rafamadriz/friendly-snippets",
            },
            event = {
                "InsertEnter",
            },
        },
    },
    {
        "L3MON4D3/LuaSnip",
        version = "2.*",
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
        build = "make install_jsregexp",
    },
}
