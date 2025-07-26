local lspconfig_defaults = require('lspconfig').util.default_config
local cmp = require("blink.cmp")
local luasnip = require("luasnip")
local blink_cmp = require('blink.cmp').get_lsp_capabilities()

require("luasnip.loaders.from_vscode").lazy_load()

lspconfig_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lspconfig_defaults.capabilities,
    require('blink.cmp').get_lsp_capabilities()
)

-- vim.lsp.config("*", {
--     root_markers = {
--         ".git",
--     },
-- })

-- vim.lsp.config("lua_ls", {
--     name = "lua_ls",
--     root_markers = {
--         ".luarc.json",
--     },
-- })

-- vim.lsp.enable("lua_ls")

-- vim.lsp.config("ts_ls", {
--     root_markers = {},
-- })

-- vim.lsp.enable("ts_ls")

-- vim.lsp.config("gopls", {
--     root_markers = {},
-- })

-- vim.lsp.enable("gopls")

-- vim.lsp.config("golangci_lint_ls", {
--     root_markers = {}
-- })

-- vim.lsp.enable("golangci_lint_ls")

-- vim.lsp.config("intelephense", {
--     root_markers = {},
-- })

-- vim.lsp.enable("intelephense")

cmp.setup({
    keymap = {
        preset = "enter",
    },
    completion = {
        documentation = {
            auto_show = true,
            window = {
                border = "single",
            },
        },
        list = {
            selection = {
                preselect = true,
                auto_insert = true,
            },
        },
        accept = {
            dot_repeat = true,
            auto_brackets = {
                enabled = true,
                default_brackets = { '(', ')' },
                override_brackets_for_filetypes = {},
                kind_resolution = {
                    enabled = true,
                },
                semantic_token_resolution = {
                    enabled = true,
                },
            },
        },
        menu = {
            enabled = true,
            auto_show = true,
            draw = {
                columns = {
                    {
                        "label",
                        "label_description",
                        gap = 1,
                    },
                    {
                        "kind_icon",
                        "kind",
                        gap = 1,
                    },
                },
            },
            border = "single",
        },
        signature = {
            enabled = true,
            show_documentation = true,
            window = {
                border = "single",
            },
        },
        trigger = {
            show_on_accept_on_trigger_character = true,
            show_on_insert_on_trigger_character = true,
            prefetch_on_insert = true,
            show_in_snippet = true,
            show_on_backspace = false,
            show_on_backspace_in_keyword = false,
            show_on_backspace_after_accept = true,
            show_on_backspace_after_insert_enter = true,
            show_on_keyword = true,
            show_on_trigger_character = true,
            show_on_insert = false,
        },
    },
    sources = {
        default = {
            "lazydev",
            "lsp",
        },
        providers = {
            lazydev = {
                name = "LazyDev",
                module = "lazydev.integrations.blink",
            },
        },
    },
    cmdline = {
        enabled = false,
    },
    fuzzy = {
        implementation = "prefer_rust_with_warning",
        sorts = {
            "score",
            "sort_text",
        },
        prebuild_binaries = {
            download = true,
            ignore_version_mismatch = true,
        },
    },
    opts_extend = {
        "sources.default",
    },
    trigger = {
        show_on_trigger_character = true,
    },
    snippets = {
        preset = "luasnip",
    },
})
