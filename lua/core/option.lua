-- ctrl-]          -> go to definition
-- gq              -> format selected text or text object
-- K               -> display documentation of the symbol under the cursor
-- ctrl-x + ctrl-o -> in insert mode, trigger code completion
--
-- grn        -> renames all references of the symbol under the cursor
-- gra        -> list code actions available in the line under the cursor
-- grr        -> lists all the references of the symbol under the cursor
-- gri        -> lists all the implementations for the symbol under the cursor
-- gO         -> lists all symbols in the current buffer
-- ctrl-s     -> in insert mode, display function signature under the cursor
-- [d         -> jump to previous diagnostic in the current buffer
-- ]d         -> jump to next diagnostic in the current buffer
-- ctrl-w + d -> show error/warning message in the line under the cursor

vim.diagnostic.config({
    virtual_text = {
        current_line = true,
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

-- '<cmd>lua vim.diagnostic.open_float()<cr>'
-- '<cmd>lua vim.diagnostic.goto_prev()<cr>'
-- '<cmd>lua vim.diagnostic.goto_next()<cr>'

vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

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
vim.opt.clipboard = "unnamedplus"
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99

-- Enable break indent
vim.opt.breakindent = true

vim.cmd([[hi! SignColumn guibg=NONE cterm=NONE term=NONE]])
vim.cmd([[hi! VertSplit guibg=NONE cterm=NONE term=NONE]])
vim.cmd([[hi! Normal guibg=NONE cterm=NONE term=NONE]])
vim.cmd([[hi! LineNr guibg=NONE cterm=NONE term=NONE]])
vim.cmd([[set rtp+=/usr/local/opt/fzf]])
