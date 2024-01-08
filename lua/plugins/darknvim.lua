return {
  {
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd("colorscheme kanagawa")
    end,
  },
  {
    "Shatur/neovim-ayu",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd("colorscheme ayu-dark")
    end,
  },
}
