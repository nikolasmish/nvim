local status, harpoon = pcall(require, 'harpoon')
if (not status) then return end

require("harpoon").setup()

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>a', '<Cmd>:lua require("harpoon.mark").add_file()<CR>', opts)
vim.keymap.set('n', '<leader>m', '<Cmd>:lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
vim.keymap.set('n', '<leader>y', '<Cmd>:lua require("harpoon.ui").nav_file(1)<CR>', opts)
vim.keymap.set('n', '<leader>u', '<Cmd>:lua require("harpoon.ui").nav_file(2)<CR>', opts)
vim.keymap.set('n', '<leader>i', '<Cmd>:lua require("harpoon.ui").nav_file(3)<CR>', opts)
vim.keymap.set('n', '<leader>o', '<Cmd>:lua require("harpoon.ui").nav_file(4)<CR>', opts)
