local gitsign = require("gitsigns")

gitsign.setup({
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '-' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
})
