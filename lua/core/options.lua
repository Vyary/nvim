vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }
vim.g.have_nerd_font = true

local o = vim.opt

o.number = true             -- Print line number
o.mouse = "a"               -- Enable mouse mode
o.showmode = false          -- Dont show mode since we have a statusline
o.clipboard = "unnamedplus" -- Sync with system clipboard
o.breakindent = true        -- Enable break indent
o.undofile = true           -- Save undo history
o.undolevels = 1000
o.ignorecase = true         -- Ignore case
o.smartcase = true          -- Don't ignore case with capitals
o.signcolumn = "yes"        -- Always show the signcolumn, otherwise it would shift the text each time
o.updatetime = 200          -- Save swap file and trigger CursorHold
o.timeoutlen = 300          -- Decrease mapped sequence wait time
o.splitbelow = true         -- Put new windows below current
o.splitkeep = "screen"
o.splitright = true         -- Put new windows right of current
o.list = false              -- Show some invisible characters (tabs...
o.inccommand = "nosplit"    -- preview incremental substitute
o.cursorline = true         -- Enable highlighting of the current line
o.scrolloff = 10            -- Minimal number of screen lines to keep above and below the cursor.
o.wrap = true
o.cmdheight = 0
o.termguicolors = true      -- True color support
o.confirm = true            -- Confirm to save changes before exiting modified buffers
o.expandtab = true          -- Use spaces instead of tabs
o.tabstop = 2               -- Number of spaces tabs count for
o.relativenumber = true     -- Relative line numbers
o.smartindent = true        -- Insert indents automatically
o.shiftwidth = 2
o.fillchars = { eob = " " } -- Disable `~` on nonexistent lines
o.laststatus = 3            -- global statusline // make statusline fill the screen

--[[
o.autowrite = true           -- Enable auto write
o.completeopt = "menu,menuone,noselect"
o.conceallevel = 3           -- Hide * markup for bold and italic
o.formatoptions = "jcroqlnt" -- tcqj
o.grepformat = "%f:%l:%c:%m"
o.grepprg = "rg --vimgrep"
o.pumblend = 10         -- Popup blend
o.pumheight = 10        -- Maximum number of entries in a popup
o.sessionoptions =
{ "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
o.shiftround = true              -- Round indent
o.shiftwidth = 2                 -- Size of an indent
o.shortmess:append({ W = true, I = true, c = true, C = true })
o.sidescrolloff = 8              -- Columns of context
o.spelllang = { "en" }
o.virtualedit = "block"          -- Allow cursor to move where there is no text in visual block mode
o.wildmode = "longest:full,full" -- Command-line completion mode
o.winminwidth = 5                -- Minimum window width


if vim.fn.has("nvim-0.10") == 1 then
  o.smoothscroll = true
end

o.fillchars = { fold = " " }
o.foldmethod = "indent"
o.foldenable = false
o.foldlevel = 99

--]]
