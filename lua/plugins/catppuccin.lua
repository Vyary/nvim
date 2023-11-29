return {
  "catppuccin/nvim",
  event = "VimEnter",
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "catppuccin-macchiato"
  end
}
