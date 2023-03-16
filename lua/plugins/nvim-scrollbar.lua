return {
  'petertriho/nvim-scrollbar',
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    'lewis6991/gitsigns.nvim'
  },
  config = function()
    require('scrollbar').setup()
    require("scrollbar.handlers.gitsigns").setup()
  end
}
