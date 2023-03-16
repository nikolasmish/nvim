return {
  'glepnir/dashboard-nvim',
  event = "VimEnter",
  opts = {
    config = {
      header = {},
      shortcut = {
        { desc = ' PackerSync', group = 'Error', action = 'PackerSync', key = 'u' },
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
