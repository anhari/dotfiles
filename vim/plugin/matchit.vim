" Load matchit.vim, but only if the user hasn't installed a newer version.

if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif
