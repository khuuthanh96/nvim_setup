return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    window = {
      mappings = {
        ["S"] = "open_split",
        ["s"] = "open_vsplit",
      },
    },
  },
}
