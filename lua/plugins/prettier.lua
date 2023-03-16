return {
  'MunifTanjim/prettier.nvim',
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    vin = 'prettierd',
    filetypes = {
      'css',
      'javascript',
      'javascriptreact',
      'typescript',
      'typescriptreact',
      'json',
      'scss',
      'less'
    }
  }
}
