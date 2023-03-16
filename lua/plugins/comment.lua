return {
  'numToStr/Comment.nvim',
    event = { "BufReadPre", "BufNewFile" },
  opts = {
    pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()
  },
  config = function(_, opts)
    require('Comment').setup(opts)
  end
}
