return {
	"rcarriga/nvim-notify",
	lazy = false,
	config = function()
		vim.notify = require("notify")

		require("notify").setup({
			stages = "fade",
			render = "compact",
			fps = 60,
			max_height = function()
				return math.floor(vim.o.lines * 0.75)
			end,
			max_width = function()
				return math.floor(vim.o.columns * 0.75)
			end,
		})
	end,
}
