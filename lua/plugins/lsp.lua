return {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
    },
    config = function()
        local lsp = require("lsp-zero")
        local cmp_action = lsp.cmp_action()

        lsp.preset("recommended")
        lsp.on_attach(function(client, bufnr)
            lsp.default_keymaps({
                buffer = bufnr
            })
        end)

        lsp.set_sign_icons({
          error = '✘',
          warn = '▲',
          hint = '⚑',
          info = '»'
        })

        lsp.nvim_workspace()
        lsp.setup()
        
        local cmp = require("cmp")

        cmp.setup({
            mapping = {
                -- `Enter` key to confirm completion
                ['<CR>'] = cmp.mapping.confirm({select = false}),

                -- Ctrl+Space to trigger completion menu
                ['<C-Space>'] = cmp.mapping.complete(),

                -- Navigate between snippet placeholder
                ['<C-f>'] = cmp_action.luasnip_jump_forward(),
                ['<C-b>'] = cmp_action.luasnip_jump_backward(),
            }
        })
    end
}
