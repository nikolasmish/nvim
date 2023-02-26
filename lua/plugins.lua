local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer not installed")
  return
end 

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use 'kyazdani42/nvim-web-devicons'
  use 'L3MON4D3/LuaSnip'
  use 'hoob3rt/lualine.nvim' -- Statusline

  -- LSP
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- Tlescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'

  -- Nvim Tree
  use 'nvim-tree/nvim-tree.lua'

  -- LazyGit
  use 'kdheepak/lazygit.nvim'

  -- comments
  use 'numToStr/Comment.nvim'

end)
