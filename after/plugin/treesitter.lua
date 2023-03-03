local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'markdown',
    'markdown_inline',
    'typescript',
    'tsx',
    'lua',
    'json',
    'css',
    'html',
    'help',
    'vim',
    'bash',
    'regex'
  },
  context_commentstring = {
    enable = true
  },
  autotag = {
    enable = true
  },
  rainbow = {
    enable = true,
    extended_mode = false,
    max_file_lines = 1000,
  },
}
