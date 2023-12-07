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
        "stylua",
        "goimports",
        "golines",
        "staticcheck",
        "gomodifytags",
        "impl",
        "black",
        "isort",
        "flake8",
        -- "prettierd",
        -- "editorconfig-checker",
      },
    })
  end,
}
