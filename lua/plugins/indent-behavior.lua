return {
  -- 1) Honor .editorconfig if present
  { "gpanders/editorconfig.nvim" },

  -- 2) Guess indent when there is no .editorconfig
  {
    "nmac427/guess-indent.nvim",
    opts = {
      auto_cmd = true, -- set on BufRead/BufNewFile
      filetype_exclude = { "help", "lazy", "markdown" },
      buftype_exclude = { "help", "nofile", "terminal", "prompt" },
    },
    config = function(_, opts)
      require("guess-indent").setup(opts)
    end,
  },
}
