local status, nvim_tree = pcall(require, 'nvim-tree')
if (not status) then return end

nvim_tree.setup({
  update_focused_file = {
    enable = true,
    update_root = false,
    ignore_list = {},
  },

})
