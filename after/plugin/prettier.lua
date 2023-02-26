local status, prettier = pcall(require, 'prettier')
if (not status) then return end

prettier.setup {
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
