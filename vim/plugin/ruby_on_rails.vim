" Ruby on Rails commands

nnoremap <leader>bb obyebug<esc>
nnoremap <leader>ec :VtrSendCommandToRunner! bin/rails credentials:edit<cr>
nnoremap <leader>jw :VtrSendCommandToRunner! bundle exec rake jobs:work
nnoremap <leader>mb :VtrSendCommandToRunner! bundle exec rake db:rollback<cr>
nnoremap <leader>mi :VtrSendCommandToRunner! migrate<cr>
nnoremap <leader>rc :VtrSendCommandToRunner! bundle exec rails console<cr>
nnoremap <leader>rd :VtrSendCommandToRunner! bundle exec rails dbconsole<cr>
nnoremap <leader>rf :VtrSendCommandToRunner! bundle exec rake routes \| fzf<cr>
nnoremap <leader>rg :VtrSendCommandToRunner! bundle exec rails generate<space>
nnoremap <leader>rk :VtrSendCommandToRunner! bundle exec rake<space>
nnoremap <leader>rr :VtrSendCommandToRunner! bundle exec rake routes \| grep<space>
nnoremap <leader>rs :VtrSendCommandToRunner! bin/rails restart<cr>
