return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = function(buf)
      local ok, info = pcall(function()
        return require("conform").get_formatter_info("prettier", buf)
      end)
      return ok and info and info.available
    end,
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      json = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      markdown = { "prettier" },
    },
  },
}
