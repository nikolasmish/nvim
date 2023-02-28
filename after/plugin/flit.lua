local status, flit = pcall(require, 'flit')
if (not status) then return end

flit.setup {
  labeled_modes = "nv"
}
