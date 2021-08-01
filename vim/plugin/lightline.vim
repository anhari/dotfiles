" lightline.vim
" A light and configurable statusline/tabline plugin for Vim
" https://github.com/itchyny/lightline.vim

let g:lightline = {
      \ 'colorscheme': 'default',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \ }
      \ }
