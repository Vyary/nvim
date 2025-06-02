return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{
			"<leader>e",
			"<cmd>Neotree focus<cr>",
			desc = "Focus File Tree and Reveal File",
		},
		{ "<leader>o", "<cmd>Neotree toggle<cr>", desc = "File Tree Toggle" },
	},
	opts = {
		close_if_last_window = true,
		popup_border_style = "rounded",
		window = {
			width = 35,
			mappings = {
				["<space>"] = "none",
			},
			statusline = {
				enable = true,
				text = " <neo-tree %s [%s] [%s] %s:%s> ",
				hl = "VertSplit",
			},
		},
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = true,
			},
			follow_current_file = {
				enabled = true,
				leave_dirs_open = true,
			},
		},
		default_component_configs = {
			icon = {
				folder_closed = "󰉋",
				folder_open = "󰝰",
				folder_empty = "󰉖",
				-- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
				-- then these will never be used.
				default = "*",
				highlight = "NeoTreeFileIcon",
			},
			modified = {
				symbol = "󰐙",
				highlight = "NeoTreeModified",
			},
			name = {
				trailing_slash = false,
				use_git_status_colors = true,
				highlight = "NeoTreeFileName",
			},
			git_status = {
				symbols = {
					-- Change type
					added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
					modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
					deleted = "󰚃", -- this can only be used in the git_status source
					renamed = "󰰟", -- this can only be used in the git_status source
					-- Status type
					untracked = "󰘥",
					ignored = "󱃓",
					unstaged = "󰄰",
					staged = "󰪥",
					conflict = "󰅙",
				},
			},
		},
	},
	config = function(_, opts)
		-- If you want icons for diagnostic errors, you'll need to define them somewhere:
		vim.fn.sign_define("DiagnosticSignError", { text = "󰅙", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn", { text = "󰀨", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignInfo", { text = "󰋼", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

		require("neo-tree").setup(opts)
	end,
}
