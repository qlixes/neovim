-- Global option
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Common option
vim.keymap.set("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>")
vim.keymap.set("n", "]d", ":lua vim.diagnostic.goto_next()<CR>")

vim.opt.relativenumber = true
vim.opt.winborder = "rounded"
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.wrap = true
vim.opt.ignorecase = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.completeopt = { "menu,menuone", "preview", "noselect", "noinsert" }
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "cursor"
vim.opt.swapfile = false
vim.opt.lazyredraw = true
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_nodules/*", "*/vendor/*", "*/.git/*" })
vim.opt.mouse = ""
vim.opt.guifont = "Roboto Mono:h10"
vim.opt.updatetime = 800
vim.opt.hlsearch = false
vim.opt.undofile = false
vim.opt.clipboard = "unnamedplus"
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
vim.opt.background = "light"

-- Enable break indent
vim.opt.breakindent = true
vim.b.completion = false

-- Native package manager
vim.pack.add({
	{ src = "https://github.com/wakatime/vim-wakatime" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", event = { "BufReadPost", "BufNewFile" } },
	{ src = "https://github.com/nvim-mini/mini.nvim" }, -- required
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
	-- { src = "https://github.com/tanvirtin/monokai.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{
		src = "https://github.com/L3MON4D3/LuaSnip",
		build = "make installl_jsregexp",
	},
	{
		src = "https://github.com/saghen/blink.cmp",
		event = {
			"InsertEnter",
		},
		build = "cargo build --release",
	},
	{
		src = "https://github.com/stevearc/conform.nvim",
		event = {
			"BufReadPre",
			"BufNewFile",
		},
	},
	{ src = "https://github.com/ibhagwan/fzf-lua" },
	{
		src = "https://github.com/mfussenegger/nvim-lint",
		event = {
			"BufReadPre",
			"BufNewFile",
		},
	},
	{ src = "https://github.com/rebelot/kanagawa.nvim" },
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
})

vim.lsp.enable({
	"lua_ls",
	"ts_ls",
})

-- Autocmd
-- vim.cmd("colorscheme cyberdream")
-- vim.cmd(":hi statusline guibg=NONE")
vim.cmd("hi! SignColumn guibg=NONE cterm=NONE term=NONE")
vim.cmd("hi! VertSplit guibg=NONE cterm=NONE term=NONE")
vim.cmd("hi! Normal guibg=NONE cterm=NONE term=NONE")
vim.cmd("hi! LineNr guibg=NONE cterm=NONE term=NONE")
vim.cmd("set rtp+=/usr/local/opt/fzf")
vim.cmd("set completeopt+=noselect")
vim.cmd("colorscheme kanagawa")

-- package preferences
require("mini.pairs").setup({
	modes = {
		insert = true,
		command = false,
		terminal = false,
	},
})

require("mini.statusline").setup()
require("mini.comment").setup()
require("mini.icons").setup()
require("mini.move").setup()
require("mini.cmdline").setup()

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip").setup({
	enable_autosnippets = true,
	history = false,
})

require("blink.cmp").setup({
	keymap = {
		preset = "enter",
	},
	appearance = {
		-- highlight_ns = vim.api.nvim_create_namespace('blink_cmp'),
		nerd_font_variant = "mono",
		use_nvim_cmp_as_default = false,
	},
	completion = {
		keyword = {
			range = "prefix",
		},
		documentation = {
			auto_show = true,
			auto_show_delay_ms = 250,
			update_delay_ms = 50,
			treesitter_highlighting = true,
			window = {
				border = "single",
			},
		},
		ghost_text = {
			enabled = true,
			show_with_selection = true,
			-- show_without_selection = false,
			show_with_menu = true,
			show_without_menu = true,
		},
		list = {
			selection = {
				preselect = true,
				auto_insert = true,
			},
			-- cycle = {
			--     from_bottom = true,
			--     from_top = true,
			-- },
		},
		accept = {
			-- dot_repeat = true,
			-- create_undo_point = true,
			auto_brackets = {
				enabled = true,
				default_brackets = { "(", ")" },
				override_brackets_for_filetypes = {},
				kind_resolution = {
					enabled = true,
					blocked_filetypes = { "typescriptreact", "javascriptreact", "vue" },
				},
				semantic_token_resolution = {
					enabled = true,
					blocked_filetypes = { "java" },
				},
			},
		},
		menu = {
			enabled = true,
			auto_show = true,
			auto_show_delay_ms = 0,
			draw = {
				align_to = "label",
				padding = 1,
				gap = 1,
				cursorline_priority = 10000,
				treesitter = {},
				columns = {
					{
						"label",
						"label_description",
						gap = 1,
					},
					{
						"kind",
					},
				},
				treesitter = {
					"lsp",
				},
			},
			border = "single",
		},
		-- trigger = {
		--     show_on_keyboard = true,
		--     prefetch_on_insert = true,
		--     show_in_snippet = true,
		--     show_on_backspace = false,
		--     show_on_backspace_in_keyword = false,
		--     show_on_backspace_after_accept = true,
		--     show_on_backspace_after_insert_enter = true,
		--     show_on_keyword = true,
		--     show_on_trigger_character = true,
		--     show_on_insert = false,
		--     show_on_blocked_trigger_characters = { ' ', '\n', '\t' },
		--     show_on_accept_on_trigger_character = true,
		--     show_on_insert_on_trigger_character = true,
		--     show_on_x_blocked_trigger_characters = { "'", '"', '(' },
		-- },
	},
	cmdline = {
		enabled = false,
		-- keymap = {
		--     preset = "cmdline",
		-- },
		-- sources = {
		--     "buffer",
		--     "cmdline",
		-- },
		-- completion = {
		--     list = {
		--         selection = {
		--             preselect = true,
		--             auto_insert = true,
		--         },
		--     },
		-- },
		-- ghost_text = {
		--     enabled = true,
		-- },
	},
	sources = {
		default = {
			-- "lazydev",
			"lsp",
		},
		providers = {
			-- lazydev = {
			--     name = "LazyDev",
			--     module = "lazydev.integrations.blink",
			--     score_offset = 100,
			-- },
			lsp = {
				name = "LSP",
				module = "blink.cmp.sources.lsp",
				score_offset = 0,
			},
			path = {
				module = "blink.cmp.sources.path",
				fallbacks = { "buffer" },
				opts = {
					trailing_slash = true,
					label_trailing_slash = true,
					show_hidden_files_by_default = false,
					ignore_root_slash = false,
				},
			},
			snippets = {
				module = "blink.cmp.sources.snippets",
				opts = {
					friendly_snippets = true,
					global_snippets = { "all" },
					clipboard_register = nil,
					use_show_condition = true,
					show_autosnippets = true,
					prefer_doc_trig = false,
				},
			},
			buffer = {
				module = "blink.cmp.sources.buffer",
				opts = {
					retention_order = { "focused", "visible", "recency", "largest" },
					use_cache = true,
					enable_in_ex_commands = false,
				},
			},
			cmdline = {
				module = "blink.cmp.sources.cmdline",
			},
			-- omni = {
			--     module = 'blink.cmp.sources.complete_func',
			-- },
		},
	},
	fuzzy = {
		implementation = "lua",
		-- implementation = "prefer_rust",
		sorts = {
			"score",
			"sort_text",
			"label",
		},
		-- prebuild_binaries = {
		-- 	download = true,
		-- 	ignore_version_mismatch = true,
		-- force_version = nil,
		-- force_system_triple = nil,
		-- },
		use_proximity = true,
		frecency = {
			enabled = true,
			path = vim.fn.stdpath("state") .. "/blink/cmp/frecency.dat",
			unsafe_no_lock = false,
		},
	},
	snippets = {
		preset = "luasnip",
	},
	signature = {
		enabled = true,
		trigger = {
			enabled = true,
			show_on_keyword = false,
			-- blocked_trigger_characters = {},
			-- blocked_retrigger_characters = {},
			-- show_on_trigger_character = true,
			-- show_on_insert = true, -- default false
			-- show_on_insert_on_trigger_character = true,
		},
		window = {
			border = "single",
			treesitter_highlighting = true,
			show_documentation = true,
		},
	},
	-- opts_extend = { "sources.default" },
})

-- require("cyberdream").setup({
--     variant = "light",
-- })

-- require("monokai").setup({
-- 	palette = require("monokai").pro,
-- 	-- palette = require("monokai").soda,
-- 	-- palette = require("monokai").ristretto,
-- 	italics = false,
-- })

require("kanagawa").setup({
	commentStyle = {
		italic = false,
	},
	functionStyle = {
		italic = false,
	},
	keywordStyle = {
		italic = false,
	},
	statementStyle = {
		italic = false,
	},
	typeStyle = {
		italic = false,
	},
	-- theme = "wave",
	background = {
		dark = "wave",
		light = "lotus",
	},
})

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
	ensure_installed = {
		"lua_ls",
		"stylua",
	},
})

require("oil").setup({
	columns = {
		"icon",
		"permissions",
	},
})

require("nvim-treesitter").setup({
	lazy = false,
	build = ":TSUpdate",
})

require("nvim-treesitter.config").setup({
	sync_install = false,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
	ensure_installed = {
		"json",
		"javascript",
		"typescript",
		"tsx",
		"yaml",
		"html",
		"css",
		"prisma",
		"markdown",
		"markdown_inline",
		"svelte",
		"graphql",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
		"query",
		"blade",
	},
})

require("conform").setup({
	default_format_opts = {
		lsp_format = "fallback",
	},
	format = {
		async = true,
	},
	formatters_by_ft = {
		lua = { "stylua" },
	},
	format_on_save = {
		lsp_format = "fallback",
		timeout_ms = 1000,
	},
})

require("fzf-lua").setup({
	"fzf-vim",
	files = {
		cmd = "rg --files --no-hidden --follow --no-ignore-exclude --no-ignore-global --no-ignore-dot --no-ignore-files --no-ignore-vcs --smart-case -g '!{.git,node_modules,vendor,generated}/'",
	},
	git = {
		file_icons = true,
	},
	lsp = {
		async_or_timeout = 3000,
	},
})

require("gitsigns").setup({
	watch_gitdir = {
		follow_files = false,
	},
	current_line_blame = false,
	signs = {
		add = { text = "+" },
		change = { text = "~" },
		delete = { text = "-" },
		topdelete = { text = "=" },
		changedelete = { text = "#" },
	},
	on_attach = function(bufnr)
		vim.keymap.set("n", "[c", require("gitsigns").prev_hunk, { buffer = bufnr })
		vim.keymap.set("n", "]c", require("gitsigns").next_hunk, { buffer = bufnr })
	end,
})

vim.keymap.set("n", "<leader>ff", ":FzfLua files<CR>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fb", ":FzfLua buffers<CR>", { desc = "Telescope find buffers" })
vim.keymap.set("n", "<leader>fq", ":FzfLua quickfix<CR>", { desc = "Telescope find quickfix" })
vim.keymap.set("n", "<leader>fl", ":FzfLua loclist<CR>", { desc = "Telescope find loclist" })
vim.keymap.set("n", "<leader>fg", ":FzfLua git_status<CR>", { desc = "Telescope find git_status" })
vim.keymap.set("n", "<leader>dd", ":FzfLua diagnostics_document<CR>", { desc = "Telescope document_diagnostics" })
vim.keymap.set(
	"n",
	"<leader>ld",
	":FzfLua lsp_document_diagnostics<CR>",
	{ desc = "Telescope lsp_document_diagnostics" }
)

vim.diagnostic.config({
	virtual_text = {
		current_line = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "✘",
			[vim.diagnostic.severity.WARN] = "▲",
			[vim.diagnostic.severity.HINT] = "⚑",
			[vim.diagnostic.severity.INFO] = "»",
		},
	},
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client:supports_method("textDocument/completion") then
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
		end
	end,
})
