-- vim-rails
-- rails.vim: Ruby on Rails power tools
-- https://github.com/tpope/vim-rails

vim.api.nvim_set_keymap("n", "<leader>db", ":Tschema<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>eg", ":Egems<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>mg", ":Emigration<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ec", ":VtrSendCommandToRunner! bin/rails credentials:edit<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>jw", ":VtrSendCommandToRunner! bin/rails jobs:work", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>mi", ":VtrSendCommandToRunner! migrate<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>mr", ":VtrSendCommandToRunner! bin/rails db:rollback<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>ms", ":VtrSendCommandToRunner! bin/rails:migrate:status<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>mv", ":VtrSendCommandToRunner! migrate-to-version<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>rc", ":VtrSendCommandToRunner! bin/rails console<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>rd", ":VtrSendCommandToRunner! bin/rails dbconsole<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>rl", ":VtrSendCommandToRunner! reload!;<space>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>rf", ":VtrSendCommandToRunner! bin/rails routes | fzf<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>rg", ":VtrSendCommandToRunner! bin/rails generate<space>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>rk", ":VtrSendCommandToRunner! bin/rails<space>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>rr", ':VtrSendCommandToRunner! bin/rails routes | grep ""<left>', { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>rs", ":VtrSendCommandToRunner! bin/rails restart<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>rt", ":VtrSendCommandToRunner! fuzzy-rails-command<cr>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>tc", ":VtrSendCommandToRunner! bin/rails tmp:clear<cr>", { noremap = true, silent = true})

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
