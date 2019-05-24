" gruvbox
" Retro groove color scheme for Vim
" https://github.com/morhetz/gruvbox

" Enable bold in the gruvbox scheme
let g:gruvbox_bold = 1

" Set contrast level (defaults to medium)
let g:gruvbox_contrast_dark = 'medium'

" Enable squigglies
let g:gruvbox_undercurl = 1

augroup gruvbox-overrides
  autocmd!

  " HTML
  " autocmd ColorScheme gruvbox highlight htmlArg cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
  autocmd ColorScheme gruvbox highlight htmlArg cterm=italic gui=italic ctermfg=214 guifg=#fabd2f

  " JSX
  autocmd ColorScheme gruvbox highlight xmlAttrib cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
  autocmd ColorScheme gruvbox highlight typescriptStorageClass cterm=italic gui=italic ctermfg=208 guifg=#fe8019
  autocmd ColorScheme gruvbox highlight typescriptStatement cterm=italic gui=italic ctermfg=167 guifg=#fb4934
  autocmd ColorScheme gruvbox highlight typescriptReserved cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
  autocmd ColorScheme gruvbox highlight typescriptLabel cterm=italic gui=italic ctermfg=108 guifg=#8ec07c

  " Ruby
  autocmd ColorScheme gruvbox highlight rubyClass cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
  autocmd ColorScheme gruvbox highlight rubyDefine cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
  autocmd ColorScheme gruvbox highlight rubyControl cterm=italic gui=italic ctermfg=167 guifg=#fb4934

  " Scss
  autocmd ColorScheme gruvbox highlight scssImport cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
  autocmd ColorScheme gruvbox highlight scssSelectorName cterm=italic gui=italic ctermfg=109 guifg=#83a598

  " Css
  autocmd ColorScheme gruvbox highlight cssPseudoClassId cterm=italic gui=italic ctermfg=108 guifg=#8ec07c

  " JSON
  autocmd ColorScheme gruvbox highlight jsonKeyword cterm=italic gui=italic ctermfg=142 guifg=#b8bb26

  "JavaScript
  autocmd ColorScheme gruvbox highlight jsFunction cterm=italic gui=italic ctermfg=108 guifg=#8ec07c
  autocmd ColorScheme gruvbox highlight jsStorageClass cterm=italic gui=italic ctermfg=208 guifg=#fe8019
augroup END

colorscheme gruvbox
