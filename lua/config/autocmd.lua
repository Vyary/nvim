vim.api.nvim_create_autocmd("BufReadPost", {
	callback = function()
		vim.diagnostic.config({ virtual_text = false })
	end,
})

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=70})
augroup END
]])
