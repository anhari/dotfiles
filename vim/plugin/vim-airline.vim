" vim-airline
" Lean & mean status/tabline for vim that's light as air.
" https://github.com/vim-airline/vim-airline

" Hide # of changed hunks

" Refresh airline when resourcing vimrc
" nmap <silent> <leader>sv :so $MYVIMRC<cr>:runtime! plugin/**/*.vim<cr>:AirlineRefresh<cr>:PlugInstall<cr>q

let g:airline#extensions#hunks#enabled = 0

" "Hide git branch name
" let g:airline#extensions#branch#enabled = 0

" Hide section y (encoding info)
let g:airline_section_y=''

" Only show the tail, e.g. a branch 'feature/foo' becomes 'foo'
let g:airline#extensions#branch#format = 1

" Use font with devicons
let g:airline_powerline_fonts = 1

let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
