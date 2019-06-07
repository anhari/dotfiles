" coc.nvim
" Intellisense engine for vim8 & neovim, full language server protocol support
" as VSCode
" https://github.com/neoclide/coc.nvim

set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes:2

nnoremap <silent> L :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Jump to definition
nnoremap <silent> <leader>dd <Plug>(coc-definition)
" See references
nnoremap <silent> <leader>dr <Plug>(coc-references)
" See implementation
nnoremap <silent> <leader>dj <Plug>(coc-implementation)

let g:coc_global_extensions = [
    \ 'coc-prettier',
    \ 'coc-eslint',
    \ 'coc-emmet',
    \ 'coc-snippets',
    \ 'coc-html',
    \ 'coc-json',
    \ 'coc-solargraph',
    \ 'coc-tsserver',
    \ 'coc-css',
    \ 'coc-yaml'
    \ ]

inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> [r <Plug>(coc-diagnostic-prev)
nmap <silent> ]r <Plug>(coc-diagnostic-next)
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" nmap <leader>qf  <Plug>(coc-fix-current)

" Remap for do codeAction of current line
nmap <leader>ca  <Plug>(coc-codeaction)
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
