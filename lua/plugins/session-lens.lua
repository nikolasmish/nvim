return {
  'rmagatti/session-lens',
  lazy = true,
  cmd = { 'SearchSession' },
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'rmagatti/auto-session',
  },
  opts = {
    path_display = { 'shorten' },
  }
}
