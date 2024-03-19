local colorscheme = require("monokai-pro")

colorscheme.setup({
    devicons = true,
    filter = "pro",
    styles = {
        comment = { italic = false },
        keyword = { italic = false },       -- any other keyword
        type = { italic = false },          -- (preferred) int, long, char, etc
        storageclass = { italic = false },  -- static, register, volatile, etc
        structure = { italic = false },     -- struct, union, enum, etc
        parameter = { italic = false },     -- parameter pass in function
        annotation = { italic = false },
        tag_attribute = { italic = false }, -- attribute of tag in reactjs
    },
})

vim.cmd([[colorscheme monokai-pro]])
