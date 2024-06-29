return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "VeryLazy" },
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
}
