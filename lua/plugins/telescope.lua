return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  version = false,
  dependencies = {
    'rmagatti/auto-session',
    'rmagatti/session-lens',
  },
  keys = {
    { ';f', '<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = true })<cr>' },
    { ';r', '<cmd>lua require("telescope.builtin").live_grep()<cr>' },
    { '\\\\', '<cmd>lua require("telescope.builtin").buffers({ initial_mode = "normal" })<cr>' },
    { ';t', '<cmd>lua require("telescope.builtin").help_tags()<cr>' },
    { ';;', '<cmd>lua require("telescope.builtin").resume()<cr>' },
    { ';e', '<cmd>lua require("telescope.builtin").diagnostics()<cr>' },
    { 'sf',
      '<cmd>lua require("telescope").extensions.file_browser.file_browser({ path="%:p:h", cwd = telescope_buffer_dir(), respect_git_ignore = false, hidden = true, groupped = true, previewer = false, initial_mode = "normal", layout_config = { height = 40 }})<cr>' },
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
    extensions = {
      file_browser = {
        theme = 'dropdown',
        hijack_netrw = true,
        mappings = {
          ['i'] = {
            ['<C-w>'] = function() vim.cmd('normal vbd') end,
          },
          ['n'] = {
            ['N'] = require 'telescope'.extensions.file_browser.actions.create,
            ['h'] = require 'telescope'.extensions.file_browser.actions.goto_parent_dir,
            ['/'] = function()
              vim.cmd('startinsert')
            end
          }
        }
      }
    }
  },
  config = function(_, options)
    local telescope = require('telescope')
    telescope.setup(options)
    telescope.load_extension('file_browser')
    telescope.load_extension('session-lens')
  end
}
