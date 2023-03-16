return {
  'glepnir/dashboard-nvim',
  lazy = true,
  event = "VimEnter",
  opts = {
    config = {
      header = {},
      shortcut = {
        { desc = ' Lazy', group = 'Error', action = 'Lazy', key = 'l' },
        { desc = ' Config', group = 'Error', action = ':e $MYVIMRC', key = 'c' },
        {
          icon = ' ',
          group = 'Question',
          icon_hl = '@variable',
          desc = 'Files',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          icon = ' ',
          group = 'Number',
          desc = 'Sessions',
          action = 'SearchSession',
          key = 's',
        },
      },
    },
  }
}
