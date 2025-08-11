vim.keymap.set("n", "<Esc>", function()
  if require("noice.lsp").scroll then
    vim.cmd("NoiceDismiss")
  else
    vim.cmd("stopinsert")
  end
end, { silent = true })
