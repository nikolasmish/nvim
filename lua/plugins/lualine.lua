return {
  'hoob3rt/lualine.nvim',
  event = "VeryLazy",
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
      disabled_filetypes = { statusline = { "dashboard", "lazy", "alpha" } }
    }
  }
}
