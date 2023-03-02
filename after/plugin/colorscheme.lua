local status, n = pcall(require, 'kanagawa')
if (not status) then return end

n.setup({
  variablebuiltinStyle = { italic = false },
  keywordStyle = { italic = false },
})

vim.cmd('colorscheme kanagawa')
