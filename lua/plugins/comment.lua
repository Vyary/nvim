return {
	"numToStr/Comment.nvim",
	lazy = true,
	opts = {},
	keys = {
		{
			"<leader>/",
			mode = { "n" },
			'<cmd>lua require("Comment.api").toggle.linewise.current()<CR>',
			desc = "Toggle comment",
		},
		{
			"<leader>/",
			mode = { "v" },
			"<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
			desc = "Toggle comment",
		},
	},
}
