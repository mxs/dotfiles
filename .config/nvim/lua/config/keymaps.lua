-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Insert Mode
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
-- Visual Mode
vim.keymap.set("v", "jk", "<Esc>", { noremap = true, silent = true })
-- Select Mode
vim.keymap.set("s", "jk", "<Esc>", { noremap = true, silent = true })
