" Ruby on Rails commands

nnoremap <leader>bb obyebug<esc>
nnoremap <leader>ec :VtrSendCommandToRunner! bin/rails credentials:edit<cr>
nnoremap <leader>jw :VtrSendCommandToRunner! bin/rails jobs:work
nnoremap <leader>mi :VtrSendCommandToRunner! migrate<cr>
nnoremap <leader>mr :VtrSendCommandToRunner! bin/rails db:rollback<cr>
nnoremap <leader>ms :VtrSendCommandToRunner! bin/rails:migrate:status<cr>
nnoremap <leader>mv :VtrSendCommandToRunner! migrate-to-version<cr>
nnoremap <leader>rc :VtrSendCommandToRunner! bin/rails console<cr>
nnoremap <leader>rd :VtrSendCommandToRunner! bin/rails dbconsole<cr>
nnoremap <leader>rl :VtrSendCommandToRunner! reload!;<space>
nnoremap <leader>rf :VtrSendCommandToRunner! bin/rails routes \| fzf<cr>
nnoremap <leader>rg :VtrSendCommandToRunner! bin/rails generate<space>
nnoremap <leader>rk :VtrSendCommandToRunner! bin/rails<space>
nnoremap <leader>rr :VtrSendCommandToRunner! bin/rails routes \| grep ""<left>
nnoremap <leader>rs :VtrSendCommandToRunner! bin/rails restart<cr>
nnoremap <leader>tc :VtrSendCommandToRunner! bin/rails tmp:clear<cr>
