return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
			},
			indent = { enable = true },
			ensure_installed = {
				"json",
				"tsx",
				"javascript",
				"typescript",
				"html",
				"css",
				"lua",
				"go",
				"gitignore",
			},
			-- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
		})
	end,
}
