-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local vks = vim.keymap.set

-- Newline Tech
vks({ "n", "i" }, "<A-o>o", "<esc>o<esc>o", { desc = "Double Newline" })
vks({ "n", "i" }, "<A-o><S-o>", "<esc><S-o><esc><S-o>", { desc = "Insert 2x Lines Above" })
vks({ "n", "i" }, "<A-o><cr>", "<esc>o<esc>o<esc><S-o>", { desc = "Newline, Padded Below" })
vks({ "n", "i" }, "<A-o><backspace>", "<esc><S-o><esc>o<esc><S-o>", { desc = "Double Newline" })
