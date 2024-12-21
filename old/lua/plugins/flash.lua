return {
  "folke/flash.nvim",
  lazy = true,
  opts = {},
  keys = {
    {
      "f",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },
  },
  config = function()
    require("flash").setup({
      modes = {
        char = {
          enabled = false,
        },
      },
    })
  end
}
