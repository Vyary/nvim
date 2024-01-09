local function map(mode, key, command, description, opts)
  local options = { noremap = true, silent = true, desc = description }

  if opts then
    options = opts

    if description ~= "" then
      options["desc"] = description
    end
  end

  vim.keymap.set(mode, key, command, options)
end

-- Page scroll focus middle
map("n", "<C-u>", "15kzz", { desc = "Half page up" })
map("n", "<C-d>", "15jzz", { desc = "Half page down" })

-- Keep search term in the middle of screen
map("n", "n", "nzzzv", { desc = "Next Search Item" })
map("n", "N", "Nzzzv", { desc = "Previous Search Item" })

-- Home row navigation
map("i", "<C-h>", "<left>", { desc = "Move Cursor Left" })
map("i", "<C-l>", "<right>", { desc = "Move Cursor Right" })
map("i", "<C-j>", "<down>", { desc = "Move Cursor Down" })
map("i", "<C-k>", "<up>", { desc = "Move Cursor Up" })

-- movement between buffers
-- map("n", "<S-tab>", "<C-w>W", { desc = "Previous window" })
map("n", "<tab>", "<C-w>w", { desc = "Next window" })

-- H and L go to begining/end of line
map("n", "H", "^", { desc = "Go to Beginning of Line" })
map("n", "L", "$", { desc = "Go to End of Line" })

-- Select whole line
map("n", "vv", "V", { desc = "Select Whole Line" })

-- Better paste
map("v", "p", '"_dP', { desc = "Paste Over Selection" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear Hlsearch" })

-- Save File
map("n", "<leader>w", "<cmd>:w<cr>", { desc = "Save File" })

-- Switch buffers
map("n", "<leader>[", "<cmd>:bp<cr>", { desc = "Buffer Previous" })
map("n", "<leader>]", "<cmd>:bn<cr>", { desc = "Buffer Next" })
map("n", "<leader>q", "<cmd>:bd<cr>", { desc = "Buffer Quit" })

-- Windows Motions
map("n", "<leader>v", "<cmd>:vsplit<cr>", { desc = "VSplit" })

-- Manage Session
map("n", "<leader>ss", "<cmd>mks! ~/.vim_session<cr>", { desc = "Save Session" })
map("n", "<leader>sl", "<cmd>source ~/.vim_session<cr>", { desc = "Load Session" })

-- Select All
map("n", "<C-a>", "ggVG", { desc = "Save Session" })
