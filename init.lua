if vim.loader then
  vim.loader.enable()
end

require("core.options")
require("core.lazy")
require("core.keymaps")
require("config.autocmd")
