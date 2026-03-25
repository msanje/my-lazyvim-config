-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>h", function()
  require("telescope.builtin").live_grep({ default_text = "AT_HERE" })
end, { desc = "Open AT_HERE on Telescope" })

vim.keymap.set("n", "<leader>r", function()
  require("telescope.builtin").live_grep({ default_text = "THREAD" })
end, { desc = "Open THREAD on Telescope" })

vim.keymap.set("n", "gl", vim.diagnostic.open_float, {
  desc = "Line diagnostics",
})

vim.keymap.set("n", "ff", "<C-f>", { desc = "Page down" })

vim.keymap.set("n", "ss", "<C-b>", { desc = "Page up" })

vim.keymap.set("n", "fj", "<C-d>", { desc = "Half page down" })
vim.keymap.set("n", "fk", "<C-u>", { desc = "Half page up" })

vim.keymap.set("n", "t", function()
  require("telescope").extensions["todo-comments"].todo()
end, { desc = "Open TODO Telescope" })
