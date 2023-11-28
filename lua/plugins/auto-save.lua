return {
  "https://git.sr.ht/~nedia/auto-save.nvim",
  event = { "BufReadPre" },
  config = function()
    require("auto-save").setup({})
  end
}