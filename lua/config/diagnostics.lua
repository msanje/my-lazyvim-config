return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- ensure signs table exists
      opts.diagnostics = opts.diagnostics or {}
      opts.diagnostics.signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "E",
          [vim.diagnostic.severity.WARN] = "W",
          [vim.diagnostic.severity.INFO] = "I",
          [vim.diagnostic.severity.HINT] = "H",
        },
      }
    end,
  },
}
