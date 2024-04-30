require("util.vim")

require("config.abbreviations")
require("config.filetypes")
require("config.helpfiles")
require("config.keymaps")
require("config.settings")
require("config.plugins")
require("util.phoenix")
require("util.rails")

vim.cmd [[
  colorscheme tokyonight-night
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
