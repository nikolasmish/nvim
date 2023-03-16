local status, autotag = pcall(require, 'nvim-ts-autotag')
if (not status) then return end

autotag.setup {}

return {
  'windwp/nvim-ts-autotag',
  config = function()
    require('nvim-ts-autotag').setup()
  end
}
