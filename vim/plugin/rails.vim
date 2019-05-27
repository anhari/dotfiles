" vim-rails
" rails.vim: Ruby on Rails power tools
" https://github.com/tpope/vim-rails

nnoremap <leader>db :Tschema<cr>
nnoremap <leader>eg :Egems<cr>
nnoremap <leader>mg :Emigration<cr>

let g:rails_projections = {
\ 'config/application.rb': {'command': 'application'},
\ 'Gemfile': {'command': 'gems'},
\ 'config/routes.rb': {'command': 'routes'},
\ 'config/locales/en.yml': {'command': 'locales'},
\ 'spec/features/*_spec.rb': {'command': 'feature'},
\ }
