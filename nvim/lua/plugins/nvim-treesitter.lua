return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = function()
    require("nvim-treesitter").install({
      "go",
      "rust",
      "javascript",
    })
  end,
}
