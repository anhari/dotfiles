" Highlight SQL in Ruby heredocs
" https://github.com/gabebw/dotfiles/commit/16223b2e4d5cdb7164e2ef62d69de7e178bef0a0
unlet b:current_syntax
syn include @SQL syntax/pgsql.vim
syn region sqlHeredoc start=/\v\<\<[-~]SQL/ end=/\vSQL/ keepend contains=@SQL
let b:current_syntax = "ruby"
