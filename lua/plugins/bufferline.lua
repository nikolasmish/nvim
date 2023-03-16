--vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
--vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {})

return {
  'akinsho/bufferline.nvim',
  event = "VeryLazy",
  opts = {
    options = {
      always_show_bufferline = false,
      show_buffer_close_icons = false,
      show_close_icon = false,
      color_icons = true,
      diagnostics_indicator = function(count)
        return "(" .. count .. ")"
      end,
      offsets = {
        {
          filetype = 'NvimTree',
          text = 'File Explorer',
          text_align = 'center',
          padding = 1,
        },
      },
    },
    highlights = {
      separator_selected = {
        fg = '#073642',
      },
      buffer_selected = {
        fg = '#fdf6e3',
        bold = true,
      },
    },
  },
}
