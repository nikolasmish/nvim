return {
  {

    'rebelot/kanagawa.nvim',
    lazy = false,
    opts = {
      variablebuiltinStyle = { italic = false },
      keywordStyle = { italic = false },
    },
    config = function(_, opts)
      require('kanagawa').setup(opts)
    end
  },

  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
  },

  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },
}
