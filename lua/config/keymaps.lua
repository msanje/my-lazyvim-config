-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>h", function()
  require("telescope.builtin").live_grep({ default_text = "ATHERE" })
end)

vim.keymap.set("n", "<leader>H", function()
  require("telescope.builtin").live_grep({
    default_text = "TODO:|FIX:|FIXME:|BUG:|HACK:|NOTE:|WARN:|WARNING:|PERF:|OPTIMIZE:|SECURITY:|DEPRECATED:|TEMP:|REVIEW:|QUESTION:",
  })
end)

vim.keymap.set("n", "gl", vim.diagnostic.open_float, {
  desc = "Line diagnostics",
})

vim.keymap.set("n", "ff", "<C-f>", { desc = "Page down" })

vim.keymap.set("n", "ss", "<C-b>", { desc = "Page up" })

vim.keymap.set("n", "fj", "<C-d>", { desc = "Half page down" })
vim.keymap.set("n", "fk", "<C-u>", { desc = "Half page up" })
