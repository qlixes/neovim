---@diagnostic disable-next-line: missing-fields
pcall(require('nvim-treesitter.install').update { with_sync = true })
require("nvim-treesitter.configs").setup({
  auto_install = false,
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = { enable = true },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {},
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {},
      goto_next_end = {},
      goto_previous_start = {},
      goto_previous_end = {},
    },
    swap= {
      enable = true,
      swap_next = {},
      swap_previous = {},
    },
  },
})
