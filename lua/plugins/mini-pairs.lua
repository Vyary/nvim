return {
	"nvim-mini/mini.pairs",
	version = "*",
	lazy = false,
	opts = {
		mappings = {
			[">"] = { action = "open", pair = "><", neigh_pattern = "[^\\].", register = { cr = true } },
		},
	},
}
