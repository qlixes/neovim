local color = require("gruvbox")

color.setup({
  italic = {
    strings = false,
    emphasis = false,
    comments = false,
    operators = false,
    folds = false,
  },
  overrides = {
    SignColumn = { link = "LineNr" }
  },
})

vim.cmd.colorscheme "gruvbox"
