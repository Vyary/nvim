return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  event = "VeryLazy",
  dependencies = {
    "williamboman/mason.nvim",
  },
  config = function()
    require("mason").setup({})
    require("mason-tool-installer").setup({
      ensure_installed = {
        "stylua",
        "goimports",
        "golines",
        "revive",
        "gomodifytags",
        "impl",
      },
    })
  end,
}
