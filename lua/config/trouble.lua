local items = require("trouble")

items.setup({})

vim.keymap.set("n", "<leader>xd", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Open trouble workspace diagnostics" })
vim.keymap.set("n", "<leader>xq", "<cmd>Trouble quickfix toggle<cr>", { desc = "Open trouble quickfix list" })
vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist toggle<cr>", { desc = "Open trouble location list" })
vim.keymap.set("n", "<leader>xt", "<cmd>Trouble todo toggle<cr>", { desc = "Open todos in trouble" })
