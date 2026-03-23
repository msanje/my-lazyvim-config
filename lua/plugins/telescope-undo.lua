return {
  "debugloop/telescope-undo.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  keys = {
    {
      "<leader>su",
      function()
        require("telescope").extensions.undo.undo()
      end,
      desc = "Search Undo History",
    },
  },
  config = function()
    require("telescope").load_extension("undo")
  end,
}
