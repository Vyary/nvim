return {
    "nvim-tree/nvim-tree.lua",
  event = "VimEnter",
    config = function ()
        
        -- set termguicolors to enable highlight groups
        vim.opt.termguicolors = true
        
        -- empty setup using defaults
        require("nvim-tree").setup()
    end
}