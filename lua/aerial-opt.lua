local aerial = require("aerial")

aerial.setup({
  attach_mode = "global",
  backends = { "lsp", "treesitter", "markdown", "man" },
  show_guides = true,
  icons = icons,
  filter_kind = filter_kind,
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
  end,
})

vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
