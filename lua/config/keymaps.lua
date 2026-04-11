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

vim.keymap.set("n", "<leader>o", "<cmd>Telescope tmux sessions<cr>", {
  desc = "Tmux sessions",
})

-- vim.keymap.set("n", "<leader>sl", function()
--   vim.fn.system("tmux switch-client -l")
-- end, { desc = "Tmux sessions" })

-- resession keymaps

-- save session
vim.keymap.set("n", "<leader>sr", function()
  require("resession").save(vim.fn.input("Save session: "))
end)

-- load session - load a specific session that you know the name for.
-- vim.keymap.set("n", "<leader>sl", function()
--   require("resession").load(vim.fn.input("Load session: "))
-- end)

-- list sessions
vim.keymap.set("n", "<leader>sl", function()
  local sessions = require("resession").list()
  require("telescope.pickers")
    .new({}, {
      prompt_title = "Sessions",
      finder = require("telescope.finders").new_table({
        results = sessions,
      }),
      sorter = require("telescope.config").values.generic_sorter({}),
      attach_mappings = function(_, map)
        map("i", "<CR>", function(prompt_bufnr)
          local selection = require("telescope.actions.state").get_selected_entry()
          require("telescope.actions").close(prompt_bufnr)
          require("resession").load(selection[1])
        end)
        return true
      end,
    })
    :find()
end)

vim.keymap.set("n", "<leader>so", function()
  require("telescope.builtin").live_grep({
    grep_open_files = true,
  })
end, { desc = "Grep open buffers" })
