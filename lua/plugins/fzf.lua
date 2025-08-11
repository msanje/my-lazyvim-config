-- In your plugins configuration
return {
  "junegunn/fzf.vim",
  dependencies = { "junegunn/fzf" },
  keys = {
    { "<leader>fb", "<cmd>Buffers<cr>", desc = "Find Buffers" },
  },
}
