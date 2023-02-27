local status, dashboard = pcall(require, 'dashboard')
if (not status) then return end

dashboard.setup {
  config = {
    week_header = {
      enable = true,
    },
    shortcut = {
      { desc = ' Update', group = '@property', action = 'PackerSync', key = 'u' },
      {
        icon = ' ',
        icon_hl = '@variable',
        desc = 'Files',
        group = 'Label',
        action = 'Telescope find_files',
        key = 'f',
      },
      {
        desc = ' Session',
        action = 'SearchSession',
        key = 's',
      },
      -- {
      --   desc = ' dotfiles',
      --   group = 'Number',
      --   action = 'Telescope dotfiles',
      --   key = 'd',
      -- },
    },
  },
}
