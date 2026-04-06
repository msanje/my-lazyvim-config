return {
  "camgraff/telescope-tmux.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  lazy = false,
  config = function()
    require("telescope").load_extension("tmux")
  end,
}
