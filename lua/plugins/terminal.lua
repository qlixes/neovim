return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
            hide_numbers = true,
            autochdir = true,
            persist_mode = false,
            direction = 'float',
            close_on_exit = true,
            shell = vim.o.shell,
        })
    end
}
