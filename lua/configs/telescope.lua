local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require('telescope.builtin')
local theme = require('telescope.themes')

telescope.setup({
    defaults = {
        path_display = {
            "smart",
        },
        file_ignore_patterns = {
            "node_modules",
            "vendor",
            "dist"
        },
    },
    pickers = {
        find_files = {
            previewer = false,
        },
        file_browser = {
            previewer = false,
        },
        git_files = {
            previewer = false,
        },
    },
    extensions = {
        file_browser = {
            hidden = true,
            respect_gitignore = true
        },
    },
})

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fl', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Telescope diagnostics' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope git files' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
