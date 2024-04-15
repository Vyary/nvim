return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "<leader>e",
      "<cmd>NvimTreeFindFile<cr>",
      desc = "Focus File Tree and Reveal File",
    },
    { "<leader>o", "<cmd>NvimTreeToggle<cr>", desc = "File Tree Toggle" },
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 35,
      },
    })
  end,
}
