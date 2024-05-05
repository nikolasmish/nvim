return {
  {
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
  },
  {
    "rose-pine/neovim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme rose-pine-moon") -- OR vim.cmd("colorscheme shin")
    end,
  },
}
