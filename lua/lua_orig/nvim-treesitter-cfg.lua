local treesitters = require("nvim-treesitter")
local configs = require("nvim-treesitter.configs")

configs.setup({
  sync_install = false,
  highlight = {
    enable = true,
  },
  indent = {
    enable == true,
  },
})
