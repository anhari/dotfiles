-- vim-rails
-- rails.vim: Ruby on Rails power tools
-- https://github.com/tpope/vim-rails

SetKeyMap("n", "<leader>db", ":Tschema<cr>")
SetKeyMap("n", "<leader>eg", ":Egems<cr>")
SetKeyMap("n", "<leader>mg", ":Emigration<cr>")
SetKeyMap("n", "<leader>ec", ":VtrSendCommandToRunner! bin/rails credentials:edit<cr>")
SetKeyMap("n", "<leader>jw", ":VtrSendCommandToRunner! bin/rails jobs:work")
SetKeyMap("n", "<leader>mi", ":VtrSendCommandToRunner! migrate<cr>")
SetKeyMap("n", "<leader>mr", ":VtrSendCommandToRunner! bin/rails db:rollback<cr>")
SetKeyMap("n", "<leader>ms", ":VtrSendCommandToRunner! bin/rails:migrate:status<cr>")
SetKeyMap("n", "<leader>mv", ":VtrSendCommandToRunner! migrate-to-version<cr>")
SetKeyMap("n", "<leader>rc", ":VtrSendCommandToRunner! bin/rails console<cr>")
SetKeyMap("n", "<leader>rd", ":VtrSendCommandToRunner! bin/rails dbconsole<cr>")
SetKeyMap("n", "<leader>rl", ":VtrSendCommandToRunner! reload!<cr>")
SetLoudKeyMap("n", "<leader>rf", ":VtrSendCommandToRunner! bin/rails routes | fzf<space>")
SetLoudKeyMap("n", "<leader>rg", ":VtrSendCommandToRunner! bin/rails generate<space>")
SetLoudKeyMap("n", "<leader>rk", ":VtrSendCommandToRunner! bin/rails<space>")
SetLoudKeyMap("n", "<leader>rr", ":VtrSendCommandToRunner! bin/rails routes | grep<space>")
SetKeyMap("n", "<leader>rs", ":VtrSendCommandToRunner! bin/rails restart<cr>")
SetKeyMap("n", "<leader>rt", ":VtrSendCommandToRunner! fuzzy-rails-command<cr>")
SetKeyMap("n", "<leader>tc", ":VtrSendCommandToRunner! bin/rails tmp:clear<cr>")

vim.cmd [[
  let g:rails_projections = {
  \ 'config/application.rb': {'command': 'application'},
  \ 'Gemfile': {'command': 'gems'},
  \ 'config/routes.rb': {'command': 'routes'},
  \ 'config/locales/en.yml': {'command': 'locales'},
  \ 'spec/features/*_spec.rb': {'command': 'feature'},
  \ "spec/models/*_spec.rb": {"type": "unittest"}
  \ }
]]
