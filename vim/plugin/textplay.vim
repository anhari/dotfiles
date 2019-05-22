" textplay
" Textplay is a simple command-line script that converts screenplays written in
" Fountain formatted plain-text to HTML, XML, and FDX (Final Draft).
" https://github.com/olivertaylor/Textplay

nnoremap <expr> <leader>tp ':VtrSendCommandToRunner! textplay < ' . expand("%p:%h"). ' > ' . expand("%:r"). ".html && open " . expand("%:r") . ".html \<cr>"
