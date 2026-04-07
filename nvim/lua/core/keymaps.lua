-- nvim/lua/core/keymaps.lua

-- Escape insert mode with jk
vim.keymap.set('i', 'jk', '<Esc>', { silent = true })

-- Better up/down movement for wrapped lines
-- Moves by visual line unless a count is provided (e.g., 5j)
vim.keymap.set({ 'n', 'x' }, 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ 'n', 'x' }, 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set({ 'n', 'x' }, '<Down>', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ 'n', 'x' }, '<Up>', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Fast movement
vim.keymap.set('n', '<S-j>', '5j', { desc = 'Fast down', silent = true })
vim.keymap.set('n', '<S-k>', '5k', { desc = 'Fast up', silent = true })

-- Insert mode cursor movement
vim.keymap.set('i', '<C-b>', '<esc>I', { desc = 'Move to beginning of line', silent = true })
vim.keymap.set('i', '<C-e>', '<end>', { desc = 'Move to end of line', silent = true })
vim.keymap.set('i', '<C-h>', '<Left>', { desc = 'Move cursor left', silent = true })
vim.keymap.set('i', '<C-j>', '<Down>', { desc = 'Move cursor down', silent = true })
vim.keymap.set('i', '<C-k>', '<Up>', { desc = 'Move cursor up', silent = true })
vim.keymap.set('i', '<C-l>', '<Right>', { desc = 'Move cursor right', silent = true })

-- Resize window using <ctrl> arrow keys
vim.keymap.set('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Increase window height', silent = true })
vim.keymap.set('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease window height', silent = true })
vim.keymap.set('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease window width', silent = true })
vim.keymap.set('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase window width', silent = true })

-- Split windows
vim.keymap.set('n', '<leader>sj', '<C-w>s', { desc = 'Split window below', silent = true })
vim.keymap.set('n', '<leader>sl', '<C-w>v', { desc = 'Split window right', silent = true })
vim.keymap.set('n', '<leader>c', '<cmd>close<cr>', { desc = 'Close this window', silent = true })

-- Move visual selection up/down
vim.keymap.set('v', '<S-j>', ":m '>+1<cr>gv=gv", { desc = 'Move selection down', silent = true })
vim.keymap.set('v', '<S-k>', ":m '<-2<cr>gv=gv", { desc = 'Move selection up', silent = true })

-- Better indenting (keep selection active)
vim.keymap.set('v', '<', '<gv', { desc = 'Indent backward', silent = true })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent forward', silent = true })

-- Search and Save
-- Clear search highlights on escape
vim.keymap.set({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and clear hlsearch', silent = true })
-- Quick save
vim.keymap.set({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save file', silent = true })
vim.keymap.set({ 'x', 'n', 's' }, 'W', '<cmd>w<cr><esc>', { desc = 'Save file', silent = true })

-- Quick quit
vim.keymap.set('n', 'Q', '<cmd>qa<cr>', { desc = 'Quit all', silent = true })
