return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  event = "VeryLazy",
  dependencies = {
    "williamboman/mason.nvim",
  },
  config = function()
    require("mason").setup({
      ui = {
        border = "rounded",
        icons = {
          package_installed = "󰗠",
          package_pending = "󱍷",
          package_uninstalled = "󰍶",
        },
      },
    })
    require("mason-tool-installer").setup({
      ensure_installed = {
        -- lua
        "stylua",
        -- go
        "goimports",
        "golines",
        "golangci-lint",
        "gomodifytags",
        "impl",
        -- py
        "black",
        "isort",
        "pylint",
        "prettier",
        "editorconfig-checker",
      },
    })
  end,
}
