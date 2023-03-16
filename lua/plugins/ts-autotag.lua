local status, autotag = pcall(require, 'nvim-ts-autotag')
if (not status) then return end

autotag.setup {}

return {
  'windwp/nvim-ts-autotag',
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require('nvim-ts-autotag').setup()
  end
}
