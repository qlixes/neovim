local lspzero = require('lsp-zero')
local cmp = require("cmp")
local cmpaction = require('lsp-zero').cmp_action()
local cmpformat = require('lsp-zero').cmp_format({ details = true })
local mason = require("mason")
local masonlspconfig = require("mason-lspconfig")
local lspconfig = require('lspconfig')
local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
local cmpautopairs = require('nvim-autopairs.completion.cmp')
local signature = require("lsp_signature")

require('luasnip.loaders.from_vscode').lazy_load()

lspzero.preset("recommended")

lspzero.on_attach(
  function(client, bufnr)
    lspzero.buffer_autoformat()
  end
)

lspzero.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
  servers = {
    ['lua_ls'] = {'lua'},
    ['rust_analyzer'] = {'rust'},
  },
})

lspzero.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»',
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
  ensure_installed = {'ts_ls', 'rust_analyzer'},
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
    {
      name = "nvim_lsp",
      entry_filter = function(entry, ctx)
        return require("cmp").lsp.CompletionItemKind.Text ~= entry:get_kind()
      end,
    },
    { name = "nvim_lua" },
    { name = "luasnip" },
  },
  formatting = cmpformat,
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }),
})

lspconfig.lua_ls.setup({
  capabilities = lsp_capabilities,
})

signature.setup({})
signature.on_attach(cfg, bufnr)

