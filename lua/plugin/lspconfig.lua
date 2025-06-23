return {
	"neovim/nvim-lspconfig",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	cmd = {
		"LspInfo",
		"LspInstall",
		"LspStart",
	},
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{
			"hrsh7th/nvim-cmp",
			event = "InsertEnter",
		},
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			build = "make install_jsregexp",
		},
		"hrsh7th/cmp-buffer",
		"saadparwaiz1/cmp_luasnip",
	},
}
