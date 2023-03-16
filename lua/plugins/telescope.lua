return {
  "nvim-telescope/telescope.nvim",
  lazy = true,
  cmd = "Telescope",
  version = false,
  dependencies = {
    'rmagatti/auto-session',
    'rmagatti/session-lens',
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { ';f', '<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = true })<cr>' },
    { ';r', '<cmd>lua require("telescope.builtin").live_grep()<cr>' },
    { '\\\\', '<cmd>lua require("telescope.builtin").buffers({ initial_mode = "normal" })<cr>' },
    { ';t', '<cmd>lua require("telescope.builtin").help_tags()<cr>' },
    { ';;', '<cmd>lua require("telescope.builtin").resume()<cr>' },
    { ';e', '<cmd>lua require("telescope.builtin").diagnostics()<cr>' },
  },
  opts = {
    defaults = {
      mappings = {
        n = {
          ['q'] = require('telescope.actions').close,
          ['<C-d>'] = require('telescope.actions').delete_buffer
        }
      }
    },
  },
  config = function(_, options)
    local telescope = require('telescope')
    telescope.setup(options)
    telescope.load_extension('session-lens')
  end
}
