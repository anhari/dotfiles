" seeing_is_believing
" Displays the results of every line of code in your file
" https://github.com/JoshCheek/seeing_is_believing

" https://github.com/JoshCheek/seeing_is_believing/wiki/Editor-Integration#vim
" Annotate every line
  nmap <leader>sae :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;
" Annotate marked lines
  nmap <leader>sb :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<CR>;
" Remove annotations
  nmap <leader>sc :%.!seeing_is_believing --clean<CR>;
" Mark the current line for annotation
  nmap <leader>ss A # => <Esc>
" Mark the highlighted lines for annotation
  vmap <leader>ss :norm A # => <Esc>
