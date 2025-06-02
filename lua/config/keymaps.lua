local function map(mode, key, command, description, opts)
  -- Ensure description is always a string, defaulting to an empty string if nil or not a string
  if type(description) ~= "string" then
    description = ""
  end

  local options = { noremap = true, silent = true, desc = description }

  if opts then
    -- Extend options while preserving default values and ensuring 'desc' is included
    options = vim.tbl_extend("force", options, opts)
    if description ~= "" then
      options["desc"] = description
    end
  end

  -- Set the keymap
  vim.keymap.set(mode, key, command, options)
end

-- Save File
map("n", "<leader>w", "<cmd>:w<cr><cmd>:wa<cr>", { desc = "Save File" })

-- Select whole line
map("n", "vv", "V", { desc = "Select Whole Line" })

-- Page scroll focus middle
map("n", "<C-u>", "15kzz", { desc = "Half page up" })
map("n", "<C-d>", "15jzz", { desc = "Half page down" })

-- Keep search term in the middle of screen
map("n", "n", "nzzzv", { desc = "Next Search Item" })
map("n", "N", "Nzzzv", { desc = "Previous Search Item" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear Hlsearch" })

-- Windows Motions
map("n", "<leader>v", "<cmd>:vsplit<cr>", { desc = "VSplit" })

-- Remove help
map("n", "<F1>", "<Nop>", { desc = "Remove help" })

-- Select All
map("n", "<C-a>", "ggVG", { desc = "Save Session" })

-- Move between windows
map("n", "<tab>", "<C-w>w", { desc = "Next window" })

-- Switch buffers
map("n", "<leader>[", "<cmd>:bp<cr>", { desc = "Buffer Previous" })
map("n", "<leader>]", "<cmd>:bn<cr>", { desc = "Buffer Next" })
map("n", "<leader>q", "<cmd>:bd<cr>", { desc = "Buffer Quit" })

-- Better paste
map("v", "p", "P", { desc = "Paste Over Selection" })
