return {
    "neovim/nvim-lspconfig", -- Collection of configurations for built-in LSP client
    cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        {
            "williamboman/mason.nvim",
            lazy = false,
        },
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp", -- LSP source for nvim-cmp
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        {
            "hrsh7th/nvim-cmp", -- Autocompletion plugin
            event = 'InsertEnter',
        },
        "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
        {
            "L3MON4D3/LuaSnip",     -- Snippets plugin
            version = "v2.*",
            build = "make install_jsregexp",
            dependencies = {
                "rafamadriz/friendly-snippets",
            },
        },
        "onsails/lspkind.nvim",
    }
}
