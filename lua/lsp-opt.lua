local lspzero = require('lsp-zero')
local cmp = require("cmp")
local cmp_action = require('lsp-zero').cmp_action()
local mason = require("mason")
local masonlspconfig = require("mason-lspconfig")
local lspconfig = require('lspconfig')

require('luasnip.loaders.from_vscode').lazy_load()

lspzero.on_attach(
  function(client, bufnr)
    lspzero.default_keymaps({buffer = bufnr})
    lspzero.buffer_autoformat()
  end
)

lspzero.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
})

lspzero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

masonlspconfig.setup({
  ensure_installed = {'tsserver', 'rust_analyzer'},
  handlers = {
    lspzero.default_setup,
  },
  automatic_installation = false,
})

cmp.setup({
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert',
  },
  fields = {'menu', 'abbr', 'kind'},
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }),
})

