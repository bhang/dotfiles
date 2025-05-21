-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>yp", function()
  vim.fn.setreg(vim.v.register, vim.fn.expand("%:p"))
end, { desc = "Copy filename to clipboard" })
