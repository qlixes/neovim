local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.alejandra,
    null_ls.builtins.formatting.asmfmt,
    null_ls.builtins.formatting.astyle,
    null_ls.builtins.formatting.bean_format,
    null_ls.builtins.formatting.bibclean,
    null_ls.builtins.formatting.biome,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.blade_formatter,
    null_ls.builtins.formatting.buf,
    null_ls.builtins.formatting.cbfmt,
    null_ls.builtins.formatting.clang_format,
    null_ls.builtins.formatting.codespell,
    null_ls.builtins.formatting.crystal_format,
    null_ls.builtins.formatting.csharpier,
    null_ls.builtins.formatting.dart_format,
    null_ls.builtins.formatting.djhtml,
    null_ls.builtins.formatting.djlint,
    null_ls.builtins.formatting.erlfmt,
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.gofumpt,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.formatting.goimports_reviser,
    null_ls.builtins.formatting.golines,
    null_ls.builtins.formatting.google_java_format,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.formatting.joker,
    null_ls.builtins.formatting.nginx_beautifier,
    null_ls.builtins.formatting.nixfmt,
    null_ls.builtins.formatting.nixpkgs_fmt,
    null_ls.builtins.formatting.npm_groovy_lint,
    null_ls.builtins.formatting.ocdc,
    null_ls.builtins.formatting.pg_format,
    null_ls.builtins.formatting.phpcbf,
    null_ls.builtins.formatting.phpcsfixer,
    null_ls.builtins.formatting.pint,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.pretty_php,
    null_ls.builtins.formatting.protolint,
    null_ls.builtins.formatting.puppet_lint,
    null_ls.builtins.formatting.pyink,
    null_ls.builtins.formatting.remark,
    null_ls.builtins.formatting.rubocop,
    null_ls.builtins.formatting.rubyfmt,
    null_ls.builtins.formatting.rufo,
    null_ls.builtins.formatting.rustywind,
    null_ls.builtins.formatting.sqlfluff,
    null_ls.builtins.formatting.sqlfmt,
    null_ls.builtins.formatting.sqlformat,
    null_ls.builtins.formatting.sql_formatter,
    null_ls.builtins.formatting.stylelint,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.swiftformat,
    null_ls.builtins.formatting.swiftlint,
    null_ls.builtins.formatting.swift_format,
    null_ls.builtins.formatting.terraform_fmt,
    null_ls.builtins.formatting.textlint,
    null_ls.builtins.formatting.tidy,
    null_ls.builtins.formatting.typstfmt,
    null_ls.builtins.formatting.uncrustify,
    null_ls.builtins.formatting.usort,
    null_ls.builtins.formatting.yamlfix,
    null_ls.builtins.formatting.yamlfmt,
    null_ls.builtins.formatting.yapf,

    null_ls.builtins.hover.dictionary,

    -- null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.diagnostics.actionlint,
    null_ls.builtins.diagnostics.alex,
    null_ls.builtins.diagnostics.ansiblelint,
    null_ls.builtins.diagnostics.buf,
    null_ls.builtins.diagnostics.checkmake,
    null_ls.builtins.diagnostics.codespell,
    null_ls.builtins.diagnostics.commitlint,
    null_ls.builtins.diagnostics.cppcheck,
    null_ls.builtins.diagnostics.djlint,
    null_ls.builtins.diagnostics.dotenv_linter,
    null_ls.builtins.diagnostics.editorconfig_checker,
    null_ls.builtins.diagnostics.gccdiag,
    null_ls.builtins.diagnostics.gdlint,
    null_ls.builtins.diagnostics.gitlint,
    null_ls.builtins.diagnostics.golangci_lint,
    null_ls.builtins.diagnostics.hadolint,
    null_ls.builtins.diagnostics.ktlint,
    null_ls.builtins.diagnostics.ltrs,
    null_ls.builtins.diagnostics.markdownlint,
    null_ls.builtins.diagnostics.markuplint,
    null_ls.builtins.diagnostics.mlint,
    null_ls.builtins.diagnostics.npm_groovy_lint,
    null_ls.builtins.diagnostics.perlimports,
    null_ls.builtins.diagnostics.proselint,
    null_ls.builtins.diagnostics.protolint,
    null_ls.builtins.diagnostics.pylint,
    null_ls.builtins.diagnostics.reek,
    null_ls.builtins.diagnostics.revive,
    null_ls.builtins.diagnostics.rstcheck,
    null_ls.builtins.diagnostics.rubocop,
    null_ls.builtins.diagnostics.saltlint,
    null_ls.builtins.diagnostics.selene,
    null_ls.builtins.diagnostics.semgrep,
    null_ls.builtins.diagnostics.solhint,
    null_ls.builtins.diagnostics.spectral,
    null_ls.builtins.diagnostics.sqlfluff,
    null_ls.builtins.diagnostics.staticcheck,
    null_ls.builtins.diagnostics.stylelint,
    null_ls.builtins.diagnostics.stylint,
    null_ls.builtins.diagnostics.swiftlint,
    null_ls.builtins.diagnostics.terraform_validate,
    null_ls.builtins.diagnostics.textidote,
    null_ls.builtins.diagnostics.textlint,
    null_ls.builtins.diagnostics.tfsec,
    null_ls.builtins.diagnostics.tidy,
    null_ls.builtins.diagnostics.todo_comments,
    null_ls.builtins.diagnostics.trail_space,
    null_ls.builtins.diagnostics.trivy,
    null_ls.builtins.diagnostics.twigcs,
    null_ls.builtins.diagnostics.vacuum,
    null_ls.builtins.diagnostics.vale,
    null_ls.builtins.diagnostics.vint,
    null_ls.builtins.diagnostics.write_good,
    null_ls.builtins.diagnostics.yamllint,

    null_ls.builtins.completion.spell,
    null_ls.builtins.completion.luasnip,
    null_ls.builtins.completion.spell,
    null_ls.builtins.completion.tags,
    null_ls.builtins.completion.vsnip,

    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.code_actions.gomodifytags,
    null_ls.builtins.code_actions.impl,
    null_ls.builtins.code_actions.refactoring,
    null_ls.builtins.code_actions.ts_node_action,
  },
})