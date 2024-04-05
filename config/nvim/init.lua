require("util.vim")

require("config.abbreviations")
require("config.filetypes")
require("config.helpfiles")
require("config.hue")
require("config.keymaps")
require("config.settings")
require("config.plugins")
require("plugins._gitsigns")
require("plugins._gruvbox")
require("plugins._lspsaga")
require("plugins._lualine")
require("plugins._mason")
require("plugins._nvim-cmp")
require("plugins._nvim-lightbulb")
require("plugins._nvim-tree")
require("plugins._nvim-treesitter")
require("plugins._telescope")
require("plugins._tokyonight")
require("plugins._trouble")
require("plugins._ultisnips")
require("plugins._vim-highlightedyank")
require("plugins._vim-test")
require("plugins._vim-tmux-runner")
require("util.phoenix")
require("util.rails")

vim.cmd [[
  colorscheme jellybeans-nvim
]]

vim.cmd [[
  autocmd BufWritePre * lua vim.lsp.buf.format()

  let g:db_ui_table_helpers = {
  \   'postgresql': {
  \     'Count': 'select count(*) from "{table}"'
  \   }
  \ }
]]
