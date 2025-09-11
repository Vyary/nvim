-- Leader key configuration
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }
vim.g.have_nerd_font = true

local o = vim.opt

-- General options
o.mouse = "a" -- Enable mouse mode
o.clipboard = "unnamedplus" -- Sync with system clipboard
o.undofile = true -- Save undo history
o.undolevels = 1000
o.confirm = true -- Confirm to save changes before exiting modified buffer
o.autoread = true -- Auto-reload file changes from disk
-- o.autowriteall = true -- Enable auto write
o.lazyredraw = true -- Don't redraw while executing macros
o.showmode = false -- Don't show mode since we have a statusline
o.cmdheight = 0
o.timeoutlen = 300 -- Decrease mapped sequence wait time
o.updatetime = 250 -- Save swap file and trigger CursorHold

-- File handling
o.swapfile = false -- Disable swap files
o.backup = false -- Don't create backup files
o.writebackup = false -- Don't create backup before overwriting
o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- UI settings
o.termguicolors = true -- True color support
o.number = true -- Print line number
o.relativenumber = true -- Relative line numbers
o.cursorline = true -- Enable highlighting of the current line
o.cursorcolumn = false -- Highlight current column
o.signcolumn = "yes" -- Always show the signcolumn
o.showbreak = "↪ " -- Show this symbol for wrapped lines
o.numberwidth = 4 -- Minimal width of number column
o.scrolloff = 0 -- Minimal number of screen lines to keep above and below the cursor
o.laststatus = 3 -- Global statusline
o.fillchars = { eob = " ", fold = " " } -- Disable `~` on nonexistent lines

-- Indentation and whitespace
o.expandtab = true -- Use spaces instead of tabs
o.shiftwidth = 2 -- Size of an indent
o.tabstop = 2 -- Number of spaces tabs count for
-- o.softtabstop = 2
-- o.autoindent = true
-- o.smartindent = true -- Insert indents automatically
-- o.cindent = true
o.breakindent = true -- Enable break indent
o.wrap = true -- Enable line wrapping
o.linebreak = true -- Wrap lines at word boundaries
o.list = true -- Show whitespace characters
o.listchars = { tab = "│ ", trail = "·", extends = "→", precedes = "←", nbsp = "␣" }

-- Search settings
o.ignorecase = true -- Ignore case
o.smartcase = true -- Don't ignore case with capitals
o.hlsearch = true -- Highlight search matches
o.incsearch = true -- Show search results while typing
o.inccommand = "nosplit" -- Preview incremental substitute
o.wildignorecase = true -- Ignore case in command-line completion
o.wildignore = { "*.o", "*.obj", "*.swp", "*.zip", "*.class", "*.pyc", ".git/*" } -- Ignore certain files

-- Window behavior
o.splitbelow = true -- Put new windows below current
o.splitright = true -- Put new windows right of current
o.splitkeep = "screen"

-- Completion and other
o.completeopt = "menu,menuone,noselect"
o.jumpoptions = "stack" -- Keep jumplist history
o.synmaxcol = 300 -- Limit syntax highlighting for long lines

-- Folding
o.foldmethod = "indent"
o.foldlevel = 99

-- Neovim 0.10+ specific options
if vim.fn.has("nvim-0.10") == 1 then
	o.smoothscroll = true
end

-- Consider enabling these options
-- o.conceallevel = 3           -- Hide * markup for bold and italic
-- o.formatoptions = "jcroqlnt" -- tcqj
-- o.grepformat = "%f:%l:%c:%m"
-- o.grepprg = "rg --vimgrep"
-- o.pumblend = 10              -- Popup blend
-- o.pumheight = 10             -- Maximum number of entries in a popup
-- o.shiftround = true          -- Round indent
-- o.sidescrolloff = 8          -- Columns of context
-- o.spelllang = { "en" }
-- o.virtualedit = "block"      -- Allow cursor to move where there is no text in visual block mode
-- o.wildmode = "longest:full,full" -- Command-line completion mode
-- o.winminwidth = 5            -- Minimum window width
