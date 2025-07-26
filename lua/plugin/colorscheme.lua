return {
    "scottmckendry/cyberdream.nvim",
    -- "morhetz/gruvbox",
    lazy = false,
    priority = 1000,
    init = function()
        vim.cmd([[colorscheme cyberdream]])
        -- vim.cmd.colorscheme("gruvbox")
    end,
}
