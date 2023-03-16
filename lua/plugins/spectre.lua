return {
  'windwp/nvim-spectre',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  keys = {
    { ';sr', '<cmd>Spectre<cr>', { noremap = true, silent = true } }
  }
}
