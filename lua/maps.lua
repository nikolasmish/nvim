local keymap = vim.keymap

vim.g.mapleader = " "

-- Escape inser with jk
keymap.set('i', 'jk', '<Esc>')

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
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

--Move Window
keymap.set('n', '<Space>', '<leader>')
keymap.set('', '<C-h>', '<C-w>h')
keymap.set('', '<C-k>', '<C-w>k')
keymap.set('', '<C-j>', '<C-w>j')
keymap.set('', '<C-l>', '<C-w>l')

-- Close buffer
keymap.set('', '<leader>q', '<cmd>q<cr>')

-- Resize windows
keymap.set('n', '<C-left>', '<C-w>>')
keymap.set('n', '<C-right>', '<C-w><')
keymap.set('n', '<C-up>', '<C-w>+')
keymap.set('n', '<C-down>', '<C-w>-')

-- LazyGit
keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>')

-- Neovim Tree
keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
keymap.set('n', '<leader>fe', '<cmd>NvimTreeFindFile<cr>')

-- Open new shell in current directory
keymap.set('n', '<leader>sh', '<cmd>!wt -w 0 nt -d \\%CD\\%<cr><cr>')
