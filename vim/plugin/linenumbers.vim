" Setup relative numbers and current line number hotness
set relativenumber
set number

" Toggle relative numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
    execute ":CocDisable"
  else
    set relativenumber
    execute ":CocEnable"
  endif
endfunc
nnoremap <leader>an :windo call NumberToggle()<cr>
