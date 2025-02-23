local lsp = require("lspconfig")
local cmp = require("cmp")
local luasnip = require("luasnip")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local defaults = require("cmp.config.default")

cmp.setup({
    preselect = 'item',
    completion = {
      completeopt = 'menu,menuone,noinsert',
    },
    snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
          behavior = cmp.ConfirmBehavior.Replace,
          select = false,
        },
    }),
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    formatting = {
      fields = {'abbr', 'kind', 'menu'},
      format = require('lspkind').cmp_format({
        mode = 'symbol_text', -- show only symbol annotations
      })
    },
})

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    }
  }
})

mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

luasnip.setup({
    enable_autosnippets = true,
    history = false,
})

require('luasnip.loaders.from_vscode').lazy_load()

