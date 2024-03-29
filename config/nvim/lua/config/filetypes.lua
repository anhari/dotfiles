-- Do filetype specific things

vim.cmd [[
  augroup vimrcEx
    autocmd!

    " When editing a file, always jump to the last known cursor position.
    " Don't do it for commit messages, when the position is invalid, or when
    " inside an event handler (happens when dropping a file on gvim).
    autocmd BufReadPost *
      \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

    " Set syntax highlighting for specific file types
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile {jscs,jshint,eslint}rc set filetype=json
    autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
    autocmd BufRead,BufNewFile */zsh/configs/* set filetype=sh
  augroup END
]]
