-- anhari's Neovim file.
-- first created on Aug 06 2015
-- ported to lua on Dec 23 2021

local options = {
  autoread = true,
  autowrite = true,
  background = "dark",
  backspace = "indent,eol,start",
  backup = false,
  colorcolumn = "+1",
  cursorline = true,
  diffopt = "vertical",
  encoding = "utf-8",
  expandtab = true,
  foldenable = false,
  hidden = true,
  history=50,
  hlsearch = true,
  ignorecase = true,
  inccommand = "split",
  incsearch = true,
  joinspaces = false,
  laststatus = 2                  ,
  mouse = "a"                       ,
  number = true,
  numberwidth = 5,
  previewheight = 40              ,
  ruler = true,
  shiftround = true,
  shiftwidth = 2,
  showcmd = true,
  smartcase = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  syntax = "enable",
  tabstop = 2,
  termguicolors = true,
  textwidth = 80,
  ttimeoutlen = 50,
  writebackup = false,
}

for option, value in pairs(options) do
  vim.opt[option] = value
end
