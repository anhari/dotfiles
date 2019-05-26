" vim-dadbod
" dadbod.vim: Modern database interface for Vim
" https://github.com/tpope/vim-dadbod

let g:db="rails:#development"

nnoremap <leader>qq :DB<space>
nnoremap <leader>qf :DB < %<cr>
nnoremap <leader>qt :DB \d<space>
