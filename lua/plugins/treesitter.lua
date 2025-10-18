return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "vim", "vimdoc", "lua", "python", "javascript" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
