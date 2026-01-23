-- Kill Vim's built-in spell checker (everywhere, permanently)
vim.opt.spell = false
vim.opt.spelllang = {}

-- Make absolutely sure no buffer re-enables it
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  callback = function()
    vim.opt_local.spell = false
  end,
})

-- Hide all diagnostic visuals (spell-style noise)
vim.diagnostic.config({
  virtual_text = false,
  underline = false,
  signs = false,
})

-- Disable spell-related plugins at the source (Lazy.nvim)
return {
  -- cSpell / spell linters
  { "davidmh/cspell.nvim", enabled = false },
  { "mfussenegger/nvim-lint", enabled = false },

  -- Codebook (if installed directly or indirectly)
  { "codebook.nvim", enabled = false },
}
