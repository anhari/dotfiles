" Always use a jsx filetype
let g:jsx_ext_required = 0
" Enable html and css syntax highlighting in JavaScript
let g:javascript_enable_domhtmlcss = 1
" Set es6 filetypes to javascript.jsx
au BufNewFile,BufRead *.es6 set filetype=javascript.jsx
