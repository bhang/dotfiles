-- Change default NetRW listing style to show tree
vim.g.netrw_liststyle = 3

-- Disable tmux navigator when zooming the Vim pane
vim.g.tmux_navigator_disable_when_zoomed = 1

local opt = vim.opt

-- Line numbering
-- Show relative numbering for more convenient jumps
-- But also show absolute line number for "where am i?"
opt.relativenumber = true
opt.number = true

-- Tabs and indentation
-- N.B. These should be sane enough defaults and can be customized
-- on a per filetype or buffer basis if required
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tabs to spaces
opt.autoindent = true -- copy indent from current line when starting a new one

-- Disable line wrapping
opt.wrap = false

-- Search settings
-- Default to case-insensitive search unless the search term
-- contains mixed case
opt.ignorecase = true
opt.smartcase = true

-- Highlight current cursor line
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will default to dark
opt.signcolumn = "yes" -- show sign column to the left so that the text doesn't shift

-- Backspace behavior
opt.backspace = "indent,eol,start"

-- Use system clipboard as default register when yanking/pasting
opt.clipboard:append("unnamedplus")

-- Window splits
-- Split below and to the right
opt.splitbelow = true
opt.splitright = true

-- Disable swapfile
opt.swapfile = false
