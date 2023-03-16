return {
  'wbthomason/packer.nvim',
  'JoosepAlviste/palenightfall.nvim',
  'rebelot/kanagawa.nvim',
  'kyazdani42/nvim-web-devicons',
  'hoob3rt/lualine.nvim',

  -- LSP
  'glepnir/lspsaga.nvim',
  'onsails/lspkind-nvim',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'neovim/nvim-lspconfig',
  'L3MON4D3/LuaSnip',
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  { 'mrjones2014/nvim-ts-rainbow', event = { "BufReadPost", "BufNewFile" } },
  'jose-elias-alvarez/null-ls.nvim',
  'MunifTanjim/prettier.nvim',
  'ThePrimeagen/harpoon',

  'RRethy/vim-illuminate',

  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',

  -- Telescope
  'nvim-lua/plenary.nvim',
  'nvim-telescope/telescope.nvim',
  'nvim-telescope/telescope-file-browser.nvim',

  'akinsho/bufferline.nvim',
  'echasnovski/mini.bufremove',

  -- Git
  'kdheepak/lazygit.nvim',
  { 'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim' },
  -- Comments
  'JoosepAlviste/nvim-ts-context-commentstring',

  -- Better f t
  'ggandor/leap.nvim',
  'ggandor/flit.nvim',


  -- Notifications, popups, misc
  { 'echasnovski/mini.indentscope', config = function() require('mini.indentscope').setup() end },
  'lukas-reineke/indent-blankline.nvim',
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
