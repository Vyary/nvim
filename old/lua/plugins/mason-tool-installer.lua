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
        width = 0.8,
        height = 0.8,
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
        -- js/ts
        "prettier",
        "editorconfig-checker",
      },
    })
  end,
}
