" Simple todo functionality
nnoremap <leader>dn :ToggleCompletion<cr>ddGpggj

function! s:ToggleCompletion()
  let save_cursor = getpos(".")
  if match(getline('.'), '- \[\s\]') != -1
    substitute/\[\s\]/[x]/
  else
    substitute/\[x\]/[ ]/
  endif
  call setpos('.', save_cursor)
endfunction

command! ToggleCompletion call <sid>ToggleCompletion()
nnoremap X :ToggleCompletion<cr>

function! s:MakeTodo()
  let save_cursor = getpos(".")
  let has_dash = (match(getline('.'), '\v^\s?- \w') != -1)
  if has_dash
    s/\v(\s+)?- (.*)/\1- [ ] \2/
    call setpos('.', save_cursor)
    normal! 4l
  else
    s/\v(\s+)?(.*)/\1- [ ] \2/
    call setpos('.', save_cursor)
    normal! 6l
  endif
  silent! call repeat#set("\<Plug>MakeTodo", 0)
endfunction
command! MakeTodo call <sid>MakeTodo()
nnoremap <Plug>MakeTodo :MakeTodo<cr>
map <leader>ut <Plug>MakeTodo

syntax match doneTodo "^\s*- \[x\].*"
highlight link doneTodo Comment
