-- Create custom highlight group for yanked text
vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#3b4261", fg = "#c8d3f5" })

-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight yanked text",
	group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({ higroup = "YankHighlight", timeout = 50 })
	end,
})
