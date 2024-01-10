-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", ";", ":")
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
-- Déplacement de 5 lignes avec J et K en mode normal
vim.api.nvim_set_keymap("n", "J", "5j", { noremap = true })
vim.api.nvim_set_keymap("n", "K", "5k", { noremap = true })

-- Déplacement de 5 lignes avec J et K en mode visuel
vim.api.nvim_set_keymap("x", "J", "5j", { noremap = true })
vim.api.nvim_set_keymap("x", "K", "5k", { noremap = true })
