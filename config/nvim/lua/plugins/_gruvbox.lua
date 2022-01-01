-- gruvbox
-- Retro groove color scheme for Vim
-- https://github.com/morhetz/gruvbox
--

vim.cmd [[
  augroup gruvbox-overrides
    autocmd!
    " HTML
    autocmd ColorScheme gruvbox highlight htmlArg cterm=italic gui=italic ctermfg=214 guifg=#fabd2f

    " Css
    autocmd ColorScheme gruvbox highlight cssBorderProp cterm=none gui=none ctermfg=208 guifg=#fe8019

    "JavaScript
    autocmd ColorScheme gruvbox highlight jsFunction cterm=italic gui=italic ctermfg=108 guifg=#8ec07c

    " JSON
    autocmd ColorScheme gruvbox highlight jsonKeyword cterm=italic gui=italic ctermfg=142 guifg=#b8bb26

    " JSX
    autocmd ColorScheme gruvbox highlight xmlAttrib cterm=italic gui=italic ctermfg=214 guifg=#fabd2f
    autocmd ColorScheme gruvbox highlight jsxTagName cterm=none gui=none ctermfg=109 guifg=#83a598

    " Ruby
    autocmd ColorScheme gruvbox highlight rubyDefine cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
    autocmd ColorScheme gruvbox highlight rubyDefine cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
    autocmd ColorScheme gruvbox highlight rubyKeyword cterm=italic gui=italic ctermfg=167 guifg=#fb4934
    autocmd ColorScheme gruvbox highlight rubyPseudoVariable cterm=italic gui=italic ctermfg=175 guifg=#d3869b
    autocmd ColorScheme gruvbox highlight rubyTestAction ctermfg=229 guifg=#fbf1c7
    autocmd ColorScheme gruvbox highlight rubyAssertion ctermfg=229 guifg=#fbf1c7
    autocmd ColorScheme gruvbox highlight rubyResponse ctermfg=229 guifg=#fbf1c7

    " TypeScript
    autocmd ColorScheme gruvbox highlight typescriptStorageClass cterm=italic gui=italic ctermfg=208 guifg=#fe8019
    autocmd ColorScheme gruvbox highlight typescriptStatement cterm=italic gui=italic ctermfg=167 guifg=#fb4934
    autocmd ColorScheme gruvbox highlight typescriptReserved cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
    autocmd ColorScheme gruvbox highlight typescriptLabel cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
    autocmd ColorScheme gruvbox highlight typescriptType cterm=italic gui=italic ctermfg=214 guifg=#fabd2f
    autocmd ColorScheme gruvbox highlight jsxAttrib cterm=italic gui=italic ctermfg=214 guifg=#fabd2f

    " Global
    autocmd ColorScheme gruvbox highlight Conditional cterm=italic gui=italic ctermfg=167 guifg=#fb4934
    autocmd ColorScheme gruvbox highlight StorageClass cterm=italic gui=italic ctermfg=208 guifg=#fe8019
    autocmd ColorScheme gruvbox highlight Include cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
    autocmd ColorScheme gruvbox highlight Identifier cterm=italic gui=italic ctermfg=109 guifg=#83a598
    autocmd ColorScheme gruvbox highlight Statement cterm=italic gui=italic ctermfg=167 guifg=#fb4934
    autocmd ColorScheme gruvbox highlight PreProc cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
  augroup END
]]

vim.g.gruvbox_contrast_dark = 'hard'   -- Set contrast level
vim.g.gruvbox_bold = 1                 -- Enable bold
vim.g.gruvbox_undercurl = 1            -- Enable squigglies
vim.g.gruvbox_italic = 1               -- Enable italics
