local items = require("todo-comments")

items.setup({})

vim.keymap.set("n", "]t", function() items.jump_next() end, { desc = "Next todo comment" })
vim.keymap.set("n", "[t", function() items.jump_prev() end, { desc = "Previous todo comment" })
