require("gitsigns").setup({
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '-' },
    changedelete = { text = '~' },
    untracked    = { text = '┆' },
  },
})
