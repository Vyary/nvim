return {
  "yanskun/gotests.nvim",
  lazy = true,
  cmd = { "GoTests", "GoTestsAll" },
  config = function()
    require("gotests").setup()
  end,
}
