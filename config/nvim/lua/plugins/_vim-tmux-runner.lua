-- VTR [Vim Tmux Runner]
-- Vim and tmux, sittin' in a tree...
-- https://github.com/christoomey/vim-tmux-runner

vim.g.VtrPercentage = 33

vim.api.nvim_set_keymap("n", "<leader>xx", ":wa<cr>:VtrSendCommandToRunner!<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>v<space>", ":VtrClearRunner<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>va", ":VtrAttachToPane<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vx", ":VtrSendCommandToRunner!<space>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vd", ":VtrSendCtrlD<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vc", ":VtrSendCtrlC<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vf", ":VtrSendFile<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vh", ":VtrFlushCommand<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vk", ":VtrKillRunner<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vo", ":VtrOpenRunner<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vr", ":VtrFocusRunner<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vv", ":VtrSendLinesToRunner<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vv", ":VtrSendLinesToRunner<cr>", { noremap = true, silent = true })
