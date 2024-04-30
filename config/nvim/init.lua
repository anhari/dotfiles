require("util.vim")

require("config.abbreviations")
require("config.filetypes")
require("config.helpfiles")
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
  colorscheme tokyonight-night

  augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
  augroup END
]]

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    -- try_lint without arguments runs the linters defined in `linters_by_ft`
    -- for the current filetype
    require("lint").try_lint()

    -- You can call `try_lint` with a linter name or a list of names to always
    -- run specific linters, independent of the `linters_by_ft` configuration
    -- require("lint").try_lint("cspell")
  end,
})
