return {
  'glepnir/lspsaga.nvim',
  opts = {
    ui = {
      winblend = 10,
      border = 'rounded',
      colors = {
        normal_bg = '#002b36'
      }
    }
  },
  keys = {
    { '<leader>j', '<Cmd>Lspsaga diagnostic_jump_next<CR>' },
    { 'gl', '<Cmd>Lspsaga show_diagnostic<CR>' },
    { 'K', '<Cmd>Lspsaga hover_doc<CR>' },
    { 'gd', '<Cmd>Lspsaga lsp_finder<CR>' },
    { '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', 'i' },
    { 'gr', '<Cmd>Lspsaga rename<CR>' },
    { '<leader>ca', function() require("lspsaga.codeaction"):code_action() end, { silent = true } },
  }
}
