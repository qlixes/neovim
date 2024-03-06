local lsp_zero = require("lsp-zero")
local mason = require("mason")
local mason_lsp = require("mason-lspconfig")
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_format = require('lsp-zero').cmp_format()
local luasnip = require("luasnip")
local lspconfig = require("lspconfig")
local lsp_kind = require("lspkind")

require("luasnip.loaders.from_vscode").lazy_load()

-- lsp_zero.on_attach(function(client, bufnr)
--   lsp_zero.default_keymaps({buffer = bufnr})
--   lsp_zero.buffer_autoformat()
-- end)

lsp_zero.set_sign_icons({
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

mason_lsp.setup({
  ensure_installed = {"lua_ls","rust_analyzer","pyright","gopls"},
  handlers = {
    lsp_zero.default_setup,
  },
})

cmp.setup({
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert',
  },
  sources = {
    {
      name = 'nvim_lsp',
      entry_filter = function(entry, ctx)
        return cmp.lsp.CompletionItemKind.Text ~= entry:get_kind()
      end,
    },
  },
  mapping = cmp.mapping.preset.insert({
    -- confirm completion item
    ['<Enter>'] = cmp.mapping.confirm({ select = true }),

    -- trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- scroll up and down the documentation window
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),

    -- navigate between snippet placeholders
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }),
  formatting = {
    format = lsp_kind.cmp_format({
      ellipsis_char = '...',
      show_labelDetails = true,
    }),
  },
  -- formatting = lsp_zero.cmp_format(),
})
