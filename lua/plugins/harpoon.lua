return {
  'ThePrimeagen/harpoon',
  keys = {
    { '<leader>a', '<Cmd>:lua require("harpoon.mark").add_file()<CR>' },
    { '<leader>m', '<Cmd>:lua require("harpoon.ui").toggle_quick_menu()<CR>' },
    { '<leader>y', '<Cmd>:lua require("harpoon.ui").nav_file(1)<CR>' },
    { '<leader>u', '<Cmd>:lua require("harpoon.ui").nav_file(2)<CR>' },
    { '<leader>i', '<Cmd>:lua require("harpoon.ui").nav_file(3)<CR>' },
    { '<leader>o', '<Cmd>:lua require("harpoon.ui").nav_file(4)<CR>' },
  }
}
