return {
  {
    "preservim/vimux",
    init = function()
      vim.g.VimuxHeight = "30"
      vim.g.VimuxOrientation = "h"
      vim.g.VimuxCloseOnExit = 0
      vim.g.VimuxUseNearestPane = 0
      vim.g.VimuxResetSequence = "q"
    end,
  },
}
