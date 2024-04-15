return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "hrsh7th/cmp-nvim-lsp" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
  },
  keys = {
    {
      "<leader>r",
      "<cmd>Telescope lsp_references<CR>",
      desc = "Show LSP references",
    },
    {
      "<leader>D",
      "<cmd>Telescope diagnostics bufnr=0<CR>",
      desc = "Show buffer diagnostics",
    },
    { "<F2>", vim.lsp.buf.rename, desc = "Smart rename" },
    {
      "<leader>ca",
      vim.lsp.buf.code_action,
      desc = "See available code actions",
    },
    {
      "K",
      vim.lsp.buf.hover,
      desc = "Fuzzy find files in cwd",
    },
    {
      "<leader>d",
      vim.diagnostic.open_float,
      desc = "Show line diagnostics",
    },
    {
      "[d",
      vim.diagnostic.goto_prev,
      desc = "Go to previous diagnostic",
    },
    {
      "]d",
      vim.diagnostic.goto_next,
      desc = "Go to next diagnostic",
    },
    {
      "gi",
      "<cmd>Telescope lsp_implementations<CR>",
      desc = "Show LSP implementations",
    },
    -- {"", "<cmd>Telescope lsp_type_definitions<CR>", desc = "Show LSP type definitions" },
    -- {"", "<cmd>Telescope lsp_definitions<CR>", desc = "Show LSP definitions" },
    -- {"", vim.lsp.buf.declaration, desc = "Go to declaration" },
  },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    vim.filetype.add({ extension = { templ = "templ" } })

    require("mason").setup({})

    require("mason-lspconfig").setup({
      ensure_installed = {
        "gopls",
        "lua_ls",
        "jedi_language_server",
        "html",
        "tsserver",
        "angularls",
        "templ",
        "htmx",
        "cssls"
      },
    })

    -- local lspconfig = require('lspconfig')
    -- lspconfig.htmx.setup {}

    -- Automatically set default lsp configuration
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({
          capabilities = capabilities,
        })
      end,
    })
  end,
}
