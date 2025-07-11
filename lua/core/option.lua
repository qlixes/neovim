vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '✘',
            [vim.diagnostic.severity.WARN] = '▲',
            [vim.diagnostic.severity.HINT] = '⚑',
            [vim.diagnostic.severity.INFO] = '»',
        },
    },
})

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.wrap = true
vim.opt.ignorecase = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.completeopt = { "menu,menuone", "preview", "noselect", "noinsert" }
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.splitkeep = "cursor"
vim.opt.swapfile = false
vim.opt.lazyredraw = true
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_nodules/*", "*/vendor/*", "*/.git/*" })
vim.opt.mouse = ""
vim.opt.guifont = "Roboto Mono:h10"
vim.opt.updatetime = 800
vim.opt.hlsearch = false
vim.opt.undofile = false
vim.opt.clipboard = unnamedplus
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99

-- Enable break indent
vim.opt.breakindent = true
