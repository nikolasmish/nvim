local status, illuminate = pcall(require, 'illuminate')
if (not status) then return end

illuminate.configure({
  providers = {
    'lsp',
    'treesitter',
    'regex',
  },
  delay = 100,
})
