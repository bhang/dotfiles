-- Set leader to Space
vim.g.mapleader = " "

local keymap = vim.keymap

-- General
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" })

-- Quitting
keymap.set("n", "<leader>qw", "<cmd>xa<CR>", { desc = "Exit neovim saving changes if necessary" })
keymap.set("n", "<leader>qq", "<cmd>qa!<CR>", { desc = "Exit neovim w/o saving changes" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Buffer management
keymap.set("n", "<leader>bd", "<cmd>bp|bd #<CR>", { desc = "Delete current buffer" })

-- Bring up tools
keymap.set("n", "<leader>ll", "<cmd>Lazy<CR>", { desc = "Open Lazy" })
keymap.set("n", "<leader>lm", "<cmd>Mason<CR>", { desc = "Open Mason" })
