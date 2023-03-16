return {
  'rmagatti/auto-session',
  lazy = true,
  cmd = { 'SearchSession' },
  opts = {
    auto_session_enable_last_session = false,
    auto_session_root_dir = vim.fn.stdpath('data') .. '/sessions/',
    auto_session_enabled = true,
    auto_save_enabled = true,
    auto_restore_enabled = true,
    auto_session_suppress_dirs = nil,

  }
}
