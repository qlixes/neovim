local lualines = require("lualine")
lualines.setup({
  icons_enabled = true,
  theme = 'auto',
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
  },
  globalstatus = false,
  refresh = {
    statusline = 1000,
    tabline = 1000,
    winbar = 1000,
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
})
