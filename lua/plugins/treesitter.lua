return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {"cpp", "python", "lua", "java", "javascript", },
            sync_install = false,
            auto_install = true,
            indent = { enable = true, disable = { "yaml" } },
            rainbow = {
                enable = true,
            },
        })
    end
}