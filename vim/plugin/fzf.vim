" fzf.vim
" fzf <3 vim
" https://github.com/junegunn/fzf.vim

let $FZF_DEFAULT_OPTS = '-0 -1'

" Bind Ctrl-P to launch the fuzzy finder
nnoremap <C-p> :Telescope find_files<cr>

" Bind tag finder to leader key
nnoremap <leader>y :BTags<cr>

" Use current color scheme to style fzf
let g:fzf_colors =
      \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }

" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
command! -bang -nargs=* Rg
      \ call fzf#vim#grep(
      \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
      \   <bang>0 ? fzf#vim#with_preview('up:60%')
      \           : fzf#vim#with_preview('right:50%:hidden', '?'),
      \   <bang>0)

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Style FZF status bar
" https://github.com/junegunn/fzf.vim/issues/32
function! s:fzf_statusline()
  hi! link fzf1 Exception
  hi! link fzf2 Exception
  hi! link fzf3 Normal
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction
autocmd! User FzfStatusLine call <SID>fzf_statusline()

command! -bang FZFControllers call fzf#run(fzf#wrap({ 'source': 'find app/controllers -type f'}, <bang>0))
command! -bang FZFModels call fzf#run(fzf#wrap({ 'source': 'find app/models -type f'}, <bang>0))
command! -bang FZFScratchPads call fzf#run(fzf#wrap({ 'source': 'find SCRATCH_PAD_* -type f'}, <bang>0))

nnoremap <leader>fg :GFiles?<cr>
nnoremap <leader>fc :FZFControllers<cr>
nnoremap <leader>fm :FZFModels<cr>
nnoremap <leader>fs :FZFScratchPads<cr>
