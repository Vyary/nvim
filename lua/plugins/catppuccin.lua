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
					blink_cmp = true,
					treesitter = true,
					flash = true,
					mason = true,
					neotree = true,
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
