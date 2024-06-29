local trouble = require("trouble")

trouble.setup({
  multiline = true,
  indent_lines = true,
  auto_preview = true,
  use_diagnostic_signs = false,
})

vim.keymap.set("n", "<leader>tt", function() require("trouble").toggle() end, { desc = "[T]rouble [T]oggle" })
vim.keymap.set("n", "<leader>tw", function() require("trouble").toggle("workspace_diagnostics") end, { desc = "[T]rouble [W]orkspace Diagnostics" })
vim.keymap.set("n", "<leader>td", function() require("trouble").toggle("document_diagnostics") end, { desc ="[T]rouble [D]ocument Diagnostics" })
vim.keymap.set("n", "<leader>tq", function() require("trouble").toggle("quickfix") end, { desc = "[T]rouble [Q]ickfix" })
vim.keymap.set("n", "<leader>tl", function() require("trouble").toggle("loclist") end, { desc = "[T]oggle [L]ocation List" })
vim.keymap.set("n", "<leader>tr", function() require("trouble").toggle("lsp_references") end, { desc = "[T]oggle LSP [R]eferences" })
