local status, dashboard = pcall(require, 'dashboard')
if (not status) then return end

local test = ''

dashboard.setup {
  config = {
    header = {},
    shortcut = {
      { desc = ' PackerSync', group = 'Error', action = 'PackerSync', key = 'u' },
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
