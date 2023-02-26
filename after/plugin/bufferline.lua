local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup({
  options = {
    mode = "tabs",
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    color_icons = true,
    diagnostics_indicator = function(count)
      return "(" .. count .. ")"
    end,
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
})

vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {})
