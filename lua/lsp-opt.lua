local lsp_zero = require("lsp-zero")
local lsp_format = require("lsp-format")

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({ buffer = bufnr })
	lsp_zero.buffer_autoformat()
	lsp_format.on_attach(client, bufnr)
end)

lsp_zero.set_sign_icons({
	error = '✘',
	warn = '▲',
	hint = '⚑',
	info = '»'
})

lsp_zero.format_on_save({
	format_opts = {
		async = false,
		timeout_ms = 10000,
	},
})

require('mason').setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
})
require('mason-lspconfig').setup({
	ensure_installed = { "tsserver", "rust_analyzer", "lua_ls" },
	handlers = {
		lsp_zero.default_setup,
	},
	automatic_installation = false,
})
