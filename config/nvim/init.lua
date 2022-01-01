require("config.abbreviations")
require("config.filetypes")
require("config.helpfiles")
require("config.keymaps")
require("config.plugins")
require("config.settings")
require("config.plugins")
require("plugins._gitsigns")
require("plugins._gruvbox")
require("plugins._lspsaga")
require("plugins._lualine")
require("plugins._nvim-cmp")
require("plugins._nvim-lsp-installer")
require("plugins._nvim-tree")
require("plugins._nvim-treesitter")
require("plugins._telescope")
require("plugins._tokyonight")
require("plugins._vim-highlightedyank")
require("plugins._vim-test")
require("plugins._vim-tmux-runner")
require("util.phoenix")
require("util.rails")

vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_auto_execute_table_helpers = 1

vim.cmd [[
  colorscheme tokyonight
]]
