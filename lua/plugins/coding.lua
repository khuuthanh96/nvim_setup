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
          go = { "goimports", "gofumpt" },
        },
      },
    },
  },
}
