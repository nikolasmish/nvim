local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  })
end

-- null_ls.setup {
--   sources = {
--     -- null_ls.builtins.diagnostics.eslint_d.with({
--     --   diagnostics_format = '[eslint] #{m}\n(#{c})',
--     -- }),
--     null_ls.builtins.formatting.prettierd,
--   },
--   on_attach = function(client, bufnr)
--     if client.supports_method("textDocument/formatting") then
--       vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
--       vim.api.nvim_create_autocmd("BufWritePre", {
--         group = augroup,
--         buffer = bufnr,
--         callback = function()
--           lsp_formatting(bufnr)
--         end,
--       })
--     end
--   end
-- }
--
return {
  'jose-elias-alvarez/null-ls.nvim',
  event = { "BufReadPre", "BufNewFile" },
  opts = function()
    local null_ls = require('null-ls')

    return {
      sources = {
        -- null_ls.builtins.diagnostics.eslint_d.with({
        --   diagnostics_format = '[eslint] #{m}\n(#{c})',
        -- }),
        null_ls.builtins.formatting.prettierd,
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              lsp_formatting(bufnr)
            end,
          })
        end
      end
    }
  end,
  config = function(_, opts)
    require('null-ls').setup(opts)
  end


}
