local null_ls = require("null-ls")
local helpers = require("null-ls.helpers")

-- code action sources
local code_actions = null_ls.builtins.code_actions

-- diagnostic sources
local diagnostics = null_ls.builtins.diagnostics

-- formatting sources
local formatting = null_ls.builtins.formatting

-- hover sources
local hover = null_ls.builtins.hover

-- completion sources
local completion = null_ls.builtins.completion

null_ls.setup({
    sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.completion.spell,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.diagnostics.write_good,
      null_ls.builtins.code_actions.gitsigns,
      null_ls.builtins.diagnostics.hadolint,
      null_ls.builtins.formatting.goimports_reviser,
      null_ls.builtins.formatting.goimports,
      null_ls.builtins.formatting.gofmt,
      null_ls.builtins.formatting.golines,
      null_ls.builtins.diagnostics.golangci_lint,
      null_ls.builtins.code_actions.gomodifytags,
      null_ls.builtins.code_actions.refactoring,
      null_ls.builtins.code_actions.ts_node_action,
      null_ls.builtins.completion.luasnip,
      null_ls.builtins.completion.tags,
      null_ls.builtins.formatting.google_java_format,
      null_ls.builtins.formatting.biome,
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.blade_formatter,
      null_ls.builtins.formatting.rustywind,
      null_ls.builtins.diagnostics.alex,
      null_ls.builtins.diagnostics.ansiblelint,
      null_ls.builtins.diagnostics.buf,
      null_ls.builtins.diagnostics.checkmake,
      null_ls.builtins.diagnostics.codespell,
      null_ls.builtins.diagnostics.commitlint,
      null_ls.builtins.diagnostics.cppcheck,
      null_ls.builtins.diagnostics.djlint,
      null_ls.builtins.diagnostics.dotenv_linter,
      null_ls.builtins.diagnostics.gccdiag,
      null_ls.builtins.diagnostics.gitlint,
      null_ls.builtins.formatting.pretty_php,
      null_ls.builtins.formatting.tidy,
    },
})

