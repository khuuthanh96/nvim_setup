return {
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
  },

  {
    -- go extension
    "fatih/vim-go",
    "AndrewRadev/splitjoin.vim",
    "fatih/gomodifytags",
    {
      "stevearc/conform.nvim",
      optional = true,
      opts = {
        formatters_by_ft = {
          lua = { "stylua" },
          go = { "goimports", "gofumpt" },
          javascript = { "prettierd", "prettier", stop_after_first = true },
        },
        format_on_save = {
          lsp_format = "fallback",
          timeout_ms = 500,
        },
        format_after_save = {
          lsp_format = "fallback",
        },
      },
    },
  },
}
