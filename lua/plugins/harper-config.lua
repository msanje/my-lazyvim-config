return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      harper_ls = {
        settings = {
          ["harper-ls"] = {
            linters = {
              SpellCheck = true,
              SentenceCapitalization = false,
              RepeatedWords = false,
              LongSentences = false,
              SpelledNumbers = false,
              Ana = false,
            },
            diagnosticSeverity = "warning",
            dialect = "American",
          },
        },
      },
    },
  },
}
