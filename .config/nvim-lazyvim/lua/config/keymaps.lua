-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jj", "<ESC>", { silent = true })

map("n", "<C-d>", "<C-d>zz", { desc = "Center cursor after moving down half-page" })
map("n", "<C-u>", "<C-u>zz", { desc = "Center cursor after moving up half-page" })

-- Save pasted word in register when replacing
map("x", "<leader>p", [["_dP]])

-- Yank into system clipboard
-- map({'n', 'v'}, '<leader>y', '"+y') -- yank motion
-- map({'n', 'v'}, '<leader>Y', '"+Y') -- yank line

-- Delete into system clipboard
-- map({'n', 'v'}, '<leader>d', '"+d') -- delete motion
-- map({'n', 'v'}, '<leader>D', '"+D') -- delete line

-- Paste from system clipboard
-- map('n', '<leader>p', '"+p')  -- paste after cursor
-- map('n', '<leader>P', '"+P')  -- paste before cursor
