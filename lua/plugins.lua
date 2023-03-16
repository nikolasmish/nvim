return {
  'JoosepAlviste/palenightfall.nvim',
  { 'mrjones2014/nvim-ts-rainbow', event = { "BufReadPost", "BufNewFile" } },

  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',

  'echasnovski/mini.bufremove',

  -- Git
  {'kdheepak/lazygit.nvim', lazy = true, cmd = { 'LazyGit' }},
  { 'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim', event = { "BufReadPost", "BufNewFile" } },
  -- Comments
  {'JoosepAlviste/nvim-ts-context-commentstring',  dependencies = {'nvim-treesitter/nvim-treesitter'}, event = { "BufReadPost", "BufNewFile" }},

  -- Notifications, popups, misc
  { 'echasnovski/mini.indentscope', event = { "BufReadPre", "BufNewFile" }, config = function() require('mini.indentscope').setup() end },
  'stevearc/dressing.nvim',

  {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require('todo-comments').setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },

  -- Markdown
  {
    'iamcco/markdown-preview.nvim',
    build = function() vim.fn['mkdp#util#install']() end,
  }
}
