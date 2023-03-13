local status, spectre = pcall(require, 'spectre')
if (not status) then return end

vim.keymap.set('n', ';sr', '<cmd>Spectre<cr>', { noremap = true, silent = true })
