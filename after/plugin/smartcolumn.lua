local status, smartcolumn = pcall(require, 'smartcolumn')
if (not status) then return end

smartcolumn.setup({
  disabled_filetypes = { 'help', 'dashboard', 'packer', 'NvimTree' },
})
