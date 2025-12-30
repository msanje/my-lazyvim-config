return {
  "christoomey/vim-tmux-navigator",
  -- vim.keymap.set("n", "C-h", ":TmuxNavigateLeft<CR>"),
  -- vim.keymap.set("n", "C-j", ":TmuxNavigateDown<CR>"),
  -- vim.keymap.set("n", "C-k", ":TmuxNavigateUp<CR>"),
  -- vim.keymap.set("n", "C-l", ":TmuxNavigateRight<CR>"),
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<cr>" },
    { "<C-j>", "<cmd>TmuxNavigateDown<cr>" },
    { "<C-k>", "<cmd>TmuxNavigateUp<cr>" },
    { "<C-l>", "<cmd>TmuxNavigateRight<cr>" },
  },
}
