vim.opt.relativenumber=true
vim.opt.number=true
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.autoindent=true
vim.opt.smartcase=true
vim.opt.smartindent=true
vim.opt.smarttab=true
vim.opt.wrap=true
vim.opt.ignorecase=true
vim.opt.cursorline=true
vim.opt.termguicolors=true
-- vim.opt.background="dark"
vim.opt.signcolumn="yes"
vim.opt.backspace={ "start", "eol", "indent" }
vim.opt.completeopt = { "menu,menuone", "preview", "noselect", "noinsert" }
vim.opt.splitright=true
vim.opt.splitbelow=true
vim.opt.splitkeep="cursor"
vim.opt.swapfile=false
vim.opt.lazyredraw=true
vim.opt.path:append({"**"})
vim.opt.wildignore:append({"*/node_nodules/*", "*/vendor/*"})
vim.opt.mouse=""
vim.opt.guifont="Meslo:h10"
vim.opt.updatetime=800
vim.o.undofile=false
-- Set highlight on search
vim.o.hlsearch = false

-- Enable break indent
vim.o.breakindent = true

vim.fn.sign_define("DiagnosticSignError", {
        texthl = "DiagnosticSignError",
        text = "✘",
        numhl = "",
})
vim.fn.sign_define("DiagnosticSignWarn", {
        texthl = "DiagnosticSignWarn",
        text = "▲",
        numhl = "",
})
vim.fn.sign_define("DiagnosticSignHint", {
        texthl = "DiagnosticSignHint",
        text = "⚑",
        numhl = "",
})
vim.fn.sign_define("DiagnosticSignInfo", {
        texthl = "DiagnosticSignInfo",
        text = "»",
        numhl = "",
})

-- vim.diagnostic.open_float()
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '✘',
      [vim.diagnostic.severity.WARN] = '▲',
      [vim.diagnostic.severity.HINT] = '⚑',
      [vim.diagnostic.severity.INFO] = '»',
    },
  },
})

