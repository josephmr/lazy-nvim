-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>fw",
  "<cmd>lua require('telescope.builtin').find_files({ search_file = vim.fn.expand('<cword>')})<CR>",
  { noremap = true, silent = true, desc = "Word (root dir)" }
)
