" Convert HTML to Haml, ensure the html2haml gem is installed
nnoremap <leader>ham :%!html2haml --erb 2> /dev/null<cr>:set ft=haml<cr>
vnoremap <leader>ham :!html2haml --erb 2> /dev/null<cr>

"" Convert Haml to ERB, ensure haml2erb -v '0.3.0.pre.3' is installed
nnoremap <leader>erb :%!haml2erb 2> /dev/null<cr>:set ft=eruby<cr>
vnoremap <leader>erb :!haml2erb 2> /dev/null<cr>
