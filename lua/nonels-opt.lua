local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,

        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports_reviser,
        null_ls.builtins.formatting.golines,

        null_ls.builtins.formatting.blade_formatter,
        null_ls.builtins.formatting.dart_format,
        null_ls.builtins.formatting.ktlint,
        null_ls.builtins.formatting.protolint,

        null_ls.builtins.code_actions.gitsigns,
        null_ls.builtins.code_actions.refactoring,
        null_ls.builtins.code_actions.statix,

        null_ls.builtins.completion.spell,
        null_ls.builtins.completion.tags,
        null_ls.builtins.completion.luasnip,

        null_ls.builtins.diagnostics.actionlint,
        null_ls.builtins.diagnostics.ansiblelint,
        null_ls.builtins.diagnostics.buf,
        null_ls.builtins.diagnostics.cfn_lint,

        null_ls.builtins.diagnostics.pylint,

        null_ls.builtins.code_actions.gomodifytags,
        null_ls.builtins.code_actions.impl,
    },
})
