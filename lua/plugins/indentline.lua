return {
    "lukas-reineke/indent-blankline.nvim",
    dependencies = {
        "HiPhish/nvim-ts-rainbow2",
    },
    config = function()
        require("indent_blankline").setup()
    end,
}