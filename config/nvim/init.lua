require("config.abbreviations")
require("config.filetypes")
require("config.helpfiles")
require("config.keymaps")
require("config.plugins")
require("config.settings")
require("plugins.autocomplete")
require("plugins.git")
require("plugins.gruvbox")
require("plugins.highlighted_yank")
require("plugins.lsp-installer")
require("plugins.nvim-tree")
require("plugins.saga")
require("plugins.statusline")
require("plugins._telescope")
require("plugins.test")
require("plugins.tokyonight")
require("plugins._nvim-treesitter")
require("plugins.vtr")
require("util.phoenix")
require("util.rails")

vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_auto_execute_table_helpers = 1

vim.cmd [[
  colorscheme tokyonight
]]
