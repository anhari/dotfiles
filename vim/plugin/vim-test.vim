" vim-test
" Run your tests at the speed of thought
" https://github.com/janko-m/vim-test

" Use vim-dispatch
let g:test#strategy = 'vtr'

" Set test runner to rspec until issue #147 is resolved
" https://github.com/janko-m/vim-test/issues/147
let g:test#runner_commands = ['RSpec']

" Leaders
nnoremap <silent> <Leader>t :TestFile<cr>
nnoremap <silent> <Leader>s :TestNearest<cr>
nnoremap <silent> <Leader>l :TestLast<cr>
nnoremap <silent> <Leader>a :TestSuite<cr>
nnoremap <silent> <leader>gt :TestVisit<cr>
