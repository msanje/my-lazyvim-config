return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      -- {
      --   "<leader>ff",
      --   function()
      --     require("fzf-lua").files()
      --   end,
      --   desc = "Find Files (fzf-lua)",
      -- },
      {
        "<leader>fa",
        function()
          require("fzf-lua").live_grep()
        end,
        desc = "Live Grep (fzf-lua)",
      },
    },
  },
}
