local items = require("mason")
local item_lspconfig = require("mason-lspconfig")

items.setup({
	ui = {
		icons = {
		    package_installed = "✓",
		    package_pending = "➜",
		    package_uninstalled = "✗"
		},
	},
})

item_lspconfig.setup({
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
