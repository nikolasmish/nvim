return {
  'nvim-tree/nvim-tree.lua',
  opts = {
    filters = {
      exclude = { "/node_modules" }
    },
    update_focused_file = {
      enable = true,
      update_root = false,
      ignore_list = {},
    },
  }
}
