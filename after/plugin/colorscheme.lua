local status, n = pcall(require, 'palenightfall')
if (not status) then return end

n.setup({
  highlight_overrides = {
    Search = { bg = '#82aaff', fg = '#333333' },
    MatchParen = { bg = '#a6accd', fg = '#333333' },
  },
})
