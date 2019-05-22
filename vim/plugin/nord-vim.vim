" nord-vim
" An arctic, north-bluish clean and elegant Vim theme.
" https://github.com/arcticicestudio/nord-vim

" colorscheme overrides
augroup nord-overrides
  autocmd!
  " Ruby
  autocmd ColorScheme nord highlight rubySymbol ctermfg=14
  autocmd ColorScheme nord highlight rubyConditional ctermfg=1
  autocmd ColorScheme nord highlight rubyControl ctermfg=1
  autocmd ColorScheme nord highlight rubyInstanceVariable ctermfg=3
  autocmd ColorScheme nord highlight rubyStringDelimiter ctermfg=2

  " Scss
  autocmd ColorScheme nord highlight scssSelectorName ctermfg=2
  autocmd ColorScheme nord highlight scssSelectorChar ctermfg=2

  " vim-fugitive
  autocmd ColorScheme nord highlight gitcommitDiscardedFile ctermfg=1
  autocmd ColorScheme nord highlight gitcommitSelectedFile ctermfg=2
  autocmd ColorScheme nord highlight gitcommitUntrackedFile ctermfg=1

  " handlebars
  autocmd ColorScheme nord highlight mustacheHandlebars ctermfg=1

  " fountain
  autocmd ColorScheme nord highlight fountainSceneHeading ctermfg=8
  autocmd ColorScheme nord highlight fountainDialogue ctermfg=4
  autocmd ColorScheme nord highlight fountainCharacter ctermfg=3
  autocmd ColorScheme nord highlight fountainParenthetical ctermfg=6
augroup END

" Enable italic comments
let g:nord_italic_comments = 1

" Limelight.vim support
let g:limelight_conceal_ctermfg = 8
