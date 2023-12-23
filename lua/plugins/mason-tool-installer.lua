return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  event = "VeryLazy",
  dependencies = {
    "williamboman/mason.nvim",
  },
  config = function()
    require("mason").setup()
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
        "flake8",
        -- "prettierd",
        -- "editorconfig-checker",
      },
    })
  end,
}
