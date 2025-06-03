return {
	"https://git.sr.ht/~nedia/auto-save.nvim",
	event = "InsertEnter",
	config = function()
		require("auto-save").setup()
	end,
}
