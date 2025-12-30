-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Use spaces; copy indent width from existing lines/files
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.shiftwidth = 0 -- 0 = use 'tabstop' or detected width
vim.o.tabstop = 2 -- 0 = follow detected width (guess-indent/.editorconfig)

vim.o.softtabstop = -1

vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("state") .. "/undo"

vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
