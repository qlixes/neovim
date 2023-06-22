return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        require("gruvbox").setup({
            undercurl = true,
            underline = true,
            bold = false,
            italic = {
              strings = false,
              comments = false,
              operators = false,
              folds = false,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = true, -- invert background for search, diffs, statuslines and errors
            contrast = "", -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = false,
            overrides = {
                SignColumn = {bg = ""}
            }
        })
        vim.cmd[[colorscheme gruvbox]]
    end
}
