-- Get platform dependant build script
local function tabnine_build_path()
  if vim.loop.os_uname().sysname == "Windows_NT" then
    return "pwsh -noni .\\install.ps1"
  else
    return "./install.sh"
  end
end

return {
  "tzachar/cmp-tabnine",
  build = tabnine_build_path(),
  event = { "BufReadPre", "BufNewFile" },
  dependencies = "hrsh7th/nvim-cmp",
  config = function()
    local tabnine = require('cmp_tabnine.config')

    tabnine:setup({
      max_lines = 1000,
      max_num_results = 20,
      sort = true,
      run_on_every_keystroke = true,
      snippet_placeholder = '..',
      ignored_file_types = {
        -- default is not to ignore
        -- uncomment to ignore in lua:
        -- lua = true
      },
      show_prediction_strength = false
    })
  end
}
