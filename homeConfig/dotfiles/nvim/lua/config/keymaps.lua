-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap('n', '<C-U>', '<C-U>zz', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-D>', '<C-D>zz', {noremap = true})
vim.api.nvim_set_keymap('i', '<Tab>', '<Plug>luasnip-expand-or-jump', {})
vim.api.nvim_set_keymap('s', '<Tab>', '<Plug>luasnip-expand-or-jump', {})
