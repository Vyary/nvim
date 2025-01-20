return {
	{
		"catppuccin/nvim",
		event = "VimEnter",
		priority = 1000,
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				flavour = "macchiato",
				-- transparent_background = true,
				integrations = {
					cmp = true,
					treesitter = true,
					nvimtree = true,
					flash = true,
					mason = true,
					illuminate = {
						enabled = true,
						lsp = false,
					},
					telescope = {
						enabled = true,
					},
				},
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
