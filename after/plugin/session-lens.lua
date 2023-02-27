local status, session_lens = pcall(require, 'session-lens')
if (not status) then return end

session_lens.setup {
  path_display = { 'shorten' },
}
