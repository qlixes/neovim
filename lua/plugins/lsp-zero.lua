return {
  "VonHeikemen/lsp-zero.nvim",
  branch = 'v3.x',
  lazy = true,
  config = false,
  dependencies = {
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},
    {"neovim/nvim-lspconfig"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/nvim-cmp"},
    {
      "L3MON4D3/LuaSnip", 
      version = "v2.*",
      run = "make install_jsregexp",
    },
  },
}
