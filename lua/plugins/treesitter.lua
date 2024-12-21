return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		-- "windwp/nvim-ts-autotag", -- autoclosing html tags
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			-- enable autotagging (w/ nvim-ts-autotag plugin)
			-- autotag = {
			--   enable = true,
			-- },
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"html",
				"css",
				"lua",
				"go",
				"gitignore",
			},
			-- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
			-- context_commentstring = {
			--   enable = true,
			--   enable_autocmd = false,
			-- },
		})
	end,
}
