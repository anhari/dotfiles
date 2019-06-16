" fzf.vim
" fzf <3 vim
" https://github.com/junegunn/fzf.vim

let $FZF_DEFAULT_OPTS = '-0 -1'

" Bind Ctrl-P to launch the fuzzy finder
nnoremap <C-p> :Files<cr>

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

" TODO: Extract to a fzf-mvc plugin
command! -bang FZFComponents call fzf#run(fzf#wrap({ 'source': 'find frontend/components -type f'}, <bang>0))
command! -bang FZFControllers call fzf#run(fzf#wrap({ 'source': 'find app/controllers lib/*_web/controllers -type f'}, <bang>0))
command! -bang FZFDatabase call fzf#run(fzf#wrap({ 'source': 'find db -type f'}, <bang>0))
command! -bang FZFHelpers call fzf#run(fzf#wrap({ 'source': 'find app/helpers -type f'}, <bang>0))
command! -bang FZFJavaScript call fzf#run(fzf#wrap({ 'source': 'find app/assets/javascripts -type f'}, <bang>0))
command! -bang FZFModels call fzf#run(fzf#wrap({ 'source': 'find app/models -type f'}, <bang>0))
command! -bang FZFRoutes call fzf#run(fzf#wrap({ 'source': 'find app/routes app/router.js config/routes.rb lib/*_web/router.ex -type f'}, <bang>0))
command! -bang FZFStylesheets call fzf#run(fzf#wrap({ 'source': 'find app/assets/stylesheets app/styles -type f'}, <bang>0))
command! -bang FZFTests call fzf#run(fzf#wrap({ 'source': 'find tests spec test -type f'}, <bang>0))
command! -bang FZFViews call fzf#run(fzf#wrap({ 'source': 'find app/views app/templates lib/*_web/templates lib/*_web/views -type f'}, <bang>0))

" TODO: Extract to a fzf-scratchpad plugin
command! -bang FZFScratchPads call fzf#run(fzf#wrap({ 'source': 'find SCRATCH_PAD_* -type f'}, <bang>0))

nnoremap <leader>fp :FZFComponents<cr>
nnoremap <leader>fc :FZFControllers<cr>
nnoremap <leader>fd :FZFDatabase<cr>
nnoremap <leader>fg :GFiles?<cr>
nnoremap <leader>fh :FZFHelpers<cr>
nnoremap <leader>fj :FZFJavaScript<cr>
nnoremap <leader>fm :FZFModels<cr>
nnoremap <leader>fr :FZFRoutes<cr>
nnoremap <leader>fR :FZFRouters<cr>
nnoremap <leader>fs :FZFScratchPads<cr>
nnoremap <leader>ft :FZFTests<cr>
nnoremap <leader>fv :FZFViews<cr>
nnoremap <leader>fy :FZFStylesheets<cr>
