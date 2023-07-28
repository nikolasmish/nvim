-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- copy to clipboard
map("n", "<C-c>", "<cmd> %y+ <CR>", { silent = true })
-- don't copy to clipboard
map("n", "x", '"_x', { silent = true })
-- select all
map("n", "<C-a>", "gg<S-V>G", { silent = true })
-- open new shell
map("n", ";sh", "<cmd>!wt -w 0 nt -d \\%CD\\%<cr><cr>", { silent = true })
-- center screen on cursor
map("n", "<C-d>", "<C-d>zz", { silent = true })
map("n", "<C-u>", "<C-u>zz", { silent = true })
map("n", "n", "nzzzv", { silent = true })
map("n", "N", "Nzzzv", { silent = true })
