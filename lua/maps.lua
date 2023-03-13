local keymap = vim.keymap

vim.g.mapleader = " "

-- Better j k
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

keymap.set('n', '<leader><leader>', ':so %<cr>', { silent = true })

-- Escape inser with jk
keymap.set('i', 'jk', '<Esc>')

-- Remove macros
keymap.set('n', 'Q', '<nop>')

-- Dont yank with x
keymap.set('n', 'x', '"_x')

-- Move to Start/End of line
keymap.set('n', '<leader>h', '_')
keymap.set('n', '<leader>l', '$')

-- Toggle highlight search
keymap.set('n', '<C-n>', ':set hlsearch!<cr>', { silent = true })

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-V>G')

-- Save
keymap.set('n', '<C-s>', '<cmd>w<cr>')
keymap.set('i', '<C-s>', '<cmd>w<cr>')

-- New tab
keymap.set('n', '<leader>bd', '<cmd>lua require("mini.bufremove").delete(0, false)<cr>', { silent = true })
keymap.set('n', '<leader>bD', '<cmd>lua require("mini.bufremove").delete(0, true)<cr>', { silent = true })
keymap.set('n', '<leader>td', '<cmd>tabclose<cr>', { silent = true })
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>")
keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>")

--Move Window
keymap.set('n', '<Space>wd', '<C-W>c')
keymap.set('n', '<Space>', '<leader>')
keymap.set('', '<C-h>', '<C-w>h')
keymap.set('', '<C-k>', '<C-w>k')
keymap.set('', '<C-j>', '<C-w>j')
keymap.set('', '<C-l>', '<C-w>l')

-- Close window
keymap.set('', '<leader>q', '<cmd>qa<cr>')

-- Resize windows
keymap.set('n', '<C-left>', '<C-w>>')
keymap.set('n', '<C-right>', '<C-w><')
keymap.set('n', '<C-up>', '<C-w>+')
keymap.set('n', '<C-down>', '<C-w>-')

-- LazyGit
keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>')
keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<cr>')

-- Neovim Tree
keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
keymap.set('n', '<leader>fe', '<cmd>NvimTreeFindFile<cr>')

-- Open new shell in current directory
keymap.set('n', '<leader>sh', '<cmd>!wt -w 0 nt -d \\%CD\\%<cr><cr>')

-- Move lines up and down
vim.keymap.set("v", "<M-k>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "<M-k>", "<cmd>move -2<CR>")
vim.keymap.set("n", "<M-j>", "<cmd>move +1<CR>")

-- Move viewport up and down and center to screen
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Select and replace, epic
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

