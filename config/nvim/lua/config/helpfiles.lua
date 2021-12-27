-- Help File speedups, <enter> to follow tag, delete for back
vim.cmd [[
  au filetype help nnoremap <buffer><cr> <c-]>
  au filetype help nnoremap <buffer><bs> <c-T>
  au filetype help nnoremap <buffer>q :q<cr>
  au filetype help set nonumber
  au filetype help wincmd _ " Maximze the help on open
]]
