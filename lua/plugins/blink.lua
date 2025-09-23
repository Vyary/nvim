return {
	"saghen/blink.cmp",
	event = "InsertEnter",
	version = "1.*",
	opts = {
		enabled = function()
			return not vim.list_contains({ "DressingInput" }, vim.bo.filetype)
				and vim.bo.buftype ~= "prompt"
				and vim.b.completion ~= false
		end,

		keymap = { preset = "enter" },

		completion = {
			documentation = {
				auto_show = true,
				auto_show_delay_ms = 100,
				treesitter_highlighting = true,
			},
			list = {
				selection = { preselect = true },
			},
			menu = {
				draw = {
					components = {
						kind_icon = {
							text = function(ctx)
								return "" .. ctx.kind_icon .. ctx.icon_gap .. ""
							end,
						},
					},
				},
			},
		},

		signature = {
			enabled = true,
		},

		sources = {
			default = { "lsp", "buffer", "path", "snippets" },
		},

		cmdline = {
			enabled = false,
		},
	},
}
