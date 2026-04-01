return {
  {
    "folke/tokyonight.nvim",
    opts = function(_, opts)
      -- keep your existing config
      opts.transparent = true
      opts.styles = {
        sidebars = "transparent",
        floats = "transparent",
      }

      -- ADD THIS
      opts.on_highlights = function(hl, c)
        hl["@comment"] = {
          fg = "#ff9e64",
          italic = true,
        }
      end
    end,
  },
}
