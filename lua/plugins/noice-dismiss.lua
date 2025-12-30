return {
  {
    "folke/noice.nvim",
    optional = true, -- only if you actually use noice
    keys = {
      -- Safer: use a leader mapping instead of hijacking <Esc>
      {
        "<leader>un",
        function()
          local ok, notify = pcall(require, "notify")
          if ok then
            notify.dismiss({ silent = true, pending = true })
          end
          pcall(vim.cmd, "NoiceDismiss")
        end,
        desc = "Dismiss notifications (noice/notify)",
        mode = { "n" },
        silent = true,
      },
    },
  },
}
