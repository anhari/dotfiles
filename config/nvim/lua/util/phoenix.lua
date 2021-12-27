-- Leader keys for https://phoenixframework.org

vim.api.nvim_set_keymap("n", "<leader>xb", ":VtrSendCommandToRunner! mix ecto.rollback<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>xc", ":VtrSendCommandToRunner! iex -S mix<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>xd", ":VtrSendCommandToRunner! mix deps.get<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>xg", ":VtrSendCommandToRunner! mix phx.gen.<space>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>xm", ":VtrSendCommandToRunner! phxmigrate<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>xr", ':VtrSendCommandToRunner! mix phx.routes | grep ""<left>', { noremap = true, silent = true })
