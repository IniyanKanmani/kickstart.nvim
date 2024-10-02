-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
--
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Turn Search Highlight Off' })

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>', { desc = 'Ignore left arror' })
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>', { desc = 'Ignore right arror' })
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>', { desc = 'Ignore up arror' })
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>', { desc = 'Ignore down arror' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Custom keymaps
vim.keymap.set({ 'i', 'v', 'c' }, 'kj', '<Esc>', { desc = 'Exit to normal mode' })

vim.keymap.set('n', '<leader>kj', '<cmd>q<CR>', { desc = 'Send command :q' })
vim.keymap.set('t', '<leader>kj', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open netrw explorer' })

vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })

vim.keymap.set('n', 'vwp', 'viw"0p', { desc = 'Replace word with last yank' })
vim.keymap.set('n', 'vqp', 'viq"0p', { desc = 'Replace text in quotes with last yank' })
vim.keymap.set('n', 'vbp', 'vib"0p', { desc = 'Replace text in brackets with last yank' })

vim.keymap.set({ 'n', 'v' }, '<leader>c', '"_c', { desc = 'Change into void register' })
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d', { desc = 'Delete into void register' })
vim.keymap.set('v', '<leader>p', '"_dP', { desc = 'Paste on selection losing losing the copied text' })

vim.keymap.set('n', 'du', 'V"dyP', { desc = 'Duplicate current line' })
vim.keymap.set('v', 'du', '"dyPgv', { desc = 'Duplicate selected text' })

vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Copy selection into system clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y', { desc = 'Copy Line into system clipboard' })

vim.keymap.set('n', '<leader>sar', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Search and replace current word' })

vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center cursor when <C-u>' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center cursor when <C-d>' })

vim.keymap.set('n', '<C-b>', '<C-b>zz', { desc = 'Center cursor when <C-b>' })
vim.keymap.set('n', '<C-f>', '<C-f>zz', { desc = 'Center cursor when <C-f>' })

vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Center cursor when showing prev search result' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Center cursor when showing next search result' })

vim.keymap.set('n', '<leader>w', '<cmd>set wrap!<CR>', { desc = 'Toggle line wrap' })

vim.keymap.set('n', '<leader>|', '<cmd>vsplit<CR>', { desc = 'Vertically split Neovim' })
vim.keymap.set('n', '<leader>-', '<cmd>split<CR>', { desc = 'Horizontally split Neovim' })
