-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

local map = vim.keymap.set

map('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps in latex
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'tex',
  callback = function(event)
    map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
    map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
    map('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'Show [D]iagnostic error messages' })
    map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
  end,
})

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- better up/down
map({ 'n', 'x' }, 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ 'n', 'x' }, '<Down>', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ 'n', 'x' }, 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map({ 'n', 'x' }, '<Up>', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Resize window using <ctrl> arrow keys
map('n', '<C-Up>', '<cmd>resize +2<cr>', { desc = 'Increase window height' })
map('n', '<C-Down>', '<cmd>resize -2<cr>', { desc = 'Decrease window height' })
map('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { desc = 'Decrease window width' })
map('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { desc = 'Increase window width' })

-- Move Lines
map('n', '<A-j>', '<cmd>m .+1<cr>==', { desc = 'Move down' })
map('n', '<A-k>', '<cmd>m .-2<cr>==', { desc = 'Move up' })
map('i', '<A-j>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move down' })
map('i', '<A-k>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move up' })
map('v', '<A-j>', ":m '>+1<cr>gv=gv", { desc = 'Move down' })
map('v', '<A-k>', ":m '<-2<cr>gv=gv", { desc = 'Move up' })

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'markdown',
  callback = function(event)
    map('n', '<leader>tb', 'ysiwL', { remap = true, desc = 'Make word [B]old' })
    map('n', '<leader>ti', 'ysiw*', { remap = true, desc = 'Make word [I]talic' })
    map('n', '<leader>tl', 'ysiwl', { remap = true, desc = 'Add obsidian [L]ink' })
    map('x', '<leader>tb', 'SL', { remap = true, desc = 'Make word [B]old' })
    map('x', '<leader>ti', 'S*', { remap = true, desc = 'Make word [I]talic' })
    map('x', '<leader>tl', 'Sl', { remap = true, desc = 'Add obsidian [L]ink' })
    map('n', '<leader>t1', '^i# <ESC>', { desc = 'Place H[1] header' })
    map('n', '<leader>t2', '^i## <ESC>', { desc = 'Place H[2] header' })
    map('n', '<leader>t3', '^i### <ESC>', { desc = 'Place H[3] header' })
    map('n', '<leader>t4', '^i#### <ESC>', { desc = 'Place H[4] header' })
  end,
})

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map('n', 'n', "'Nn'[v:searchforward].'zv'", { expr = true, desc = 'Next search result' })
map('x', 'n', "'Nn'[v:searchforward]", { expr = true, desc = 'Next search result' })
map('o', 'n', "'Nn'[v:searchforward]", { expr = true, desc = 'Next search result' })
map('n', 'N', "'nN'[v:searchforward].'zv'", { expr = true, desc = 'Prev search result' })
map('x', 'N', "'nN'[v:searchforward]", { expr = true, desc = 'Prev search result' })
map('o', 'N', "'nN'[v:searchforward]", { expr = true, desc = 'Prev search result' })

-- Add undo break-points
map('i', ',', ',<c-g>u')
map('i', '.', '.<c-g>u')
map('i', ';', ';<c-g>u')

-- save file
map({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = '[S]ave file' })

--keywordprg
map('n', '<leader>K', '<cmd>norm! K<cr>', { desc = 'Keywordprg' })

-- better indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- quit
map('n', '<leader>qq', '<cmd>qa<cr>', { desc = '[Q]uit all' })

-- windows
map('n', '<leader>ww', '<C-W>p', { desc = 'Other [W]indow', remap = true })
map('n', '<leader>wd', '<C-W>c', { desc = '[D]elete window', remap = true })
map('n', '<leader>w-', '<C-W>s', { desc = 'Split window below', remap = true })
map('n', '<leader>w|', '<C-W>v', { desc = 'Split window right', remap = true })
map('n', '<leader>-', '<C-W>s', { desc = 'Split window below', remap = true })
map('n', '<leader>|', '<C-W>v', { desc = 'Split window right', remap = true })

require('langmapper').map('i', 'jj', '<ESC>', { silent = true })

map('n', '<C-d>', '<C-d>zz', { desc = 'Center cursor after moving down half-page', silent = true })
map('n', '<C-u>', '<C-u>zz', { desc = 'Center cursor after moving up half-page', silent = true })

-- Save pasted word in register when replacing
map('x', '<leader>p', [["_dP]])

-- Toggle light/dark theme
map('n', '<leader>ut', function()
  if vim.o.background == 'dark' then
    vim.o.background = 'light'
  else
    vim.o.background = 'dark'
  end
end, {
  desc = '[T]oggle theme',
})

-- Accept spelling suggestion
map('n', 'z+', 'z=1', { desc = 'Accept first spelling suggestion' })
-- vim: ts=2 sts=2 sw=2 et
