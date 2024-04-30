return {
  {
    "leoluz/nvim-dap-go",
    -- lazy = true,
    dependencies = { "mfussenegger/nvim-dap" },
    lazy = true,
    enable = true,
    config = true,
    opts = {
      dap_configurations = {
        {
          type = "go",
          name = "Debug cmd",
          request = "launch",
          program = "${workspaceFolder}/cmd/main.go",
          mode = "exec",
        },
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
    lazy = true,
    opts = {
      layouts = {
        {
          elements = {
            {
              id = "breakpoints",
              size = 0.5,
            },
            {
              id = "stacks",
              size = 0.5,
            },
          },
          position = "left",
          size = 40,
        },
        {
          elements = {
            {
              id = "scopes",
              size = 1,
            },
          },
          position = "bottom",
          size = 10,
        },
      },
    },
  },
}
