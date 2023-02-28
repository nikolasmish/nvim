local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'markdown',
    'markdown_inline',
    'tsx',
    'lua',
    'json',
    'css',
    'html',
  },
  context_commentstring = {
    enable = true
  },
  autotag = {
    enable = true
  }
}
