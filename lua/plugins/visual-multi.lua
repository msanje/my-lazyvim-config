-- lua/plugins/visual-multi.lua
return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    event = "VeryLazy",
    config = function()
      -- safer mappings less likely to be intercepted by terminals
      vim.g.VM_maps = {
        -- add cursors in same column (use Crtrl + Shift + j, Ctrl + Shift + k)
        ["Add Cursor Down"] = "<C-S-j>",
        ["Add Cursor Up"] = "<C-S-k>",

        -- occurrence selection (keep defaults-ish)
        ["Find Under"] = "<C-n>",
        ["Find Subword Under"] = "<C-n>",
        ["Skip Region"] = "<C-x>",

        -- optional: map escape from multi-cursor to <Esc>
        ["Exit"] = "<Esc>",
      }

      -- (optional) allow mouse to create cursors
      vim.g.VM_mouse_mappings = 1
    end,
  },
}
