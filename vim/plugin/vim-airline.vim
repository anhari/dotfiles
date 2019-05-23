" vim-airline
" Lean & mean status/tabline for vim that's light as air.
" https://github.com/vim-airline/vim-airline

" Hide # of changed hunks
let g:airline#extensions#hunks#enabled = 0

" "Hide git branch name
" let g:airline#extensions#branch#enabled = 0

" Hide section y (encoding info)
let g:airline_section_y=''

" Theme
" let g:airline_theme = 'base16'
let g:airline_theme = 'gruvbox'

" Only show the tail, e.g. a branch 'feature/foo' becomes 'foo'
let g:airline#extensions#branch#format = 1

" Use font with devicons
let g:airline_powerline_fonts = 1
