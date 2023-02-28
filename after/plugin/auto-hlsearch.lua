local status, auto_hl = pcall(require, 'auto-hlsearch')
if (not status) then return end

auto_hl.setup()
