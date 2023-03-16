return {
  "nvim-treesitter/nvim-treesitter",
  version = false, -- last release is way too old and doesn't work on Windows
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
      disable = {},
    },
    ensure_installed = {
      'markdown',
      'markdown_inline',
      'typescript',
      'tsx',
      'lua',
      'json',
      'css',
      'html',
      'help',
      'vim',
      'bash',
      'regex'
    },
    context_commentstring = {
      enable = true
    },
    autotag = {
      enable = true
    },
    rainbow = {
      enable = true,
      extended_mode = false,
      max_file_lines = 1000,
    },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
  end
}
