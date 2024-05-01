-- [name]: vim-tmux-runner
-- [description]: Vim and tmux, sittin' in a tree...
-- [source]: https://github.com/christoomey/vim-tmux-runner

return {
	"christoomey/vim-tmux-runner",
	config = function()
		vim.g.VtrPercentage = 40

		SetKeyMap("n", "<leader>xx", ":wa<cr>:VtrSendCommandToRunner!<cr>")
		SetKeyMap("n", "<leader>v<space>", ":VtrClearRunner<cr>")
		SetKeyMap("n", "<leader>va", ":VtrAttachToPane<cr>")
		SetLoudKeyMap("n", "<leader>vx", ":VtrSendCommandToRunner!<space>")
		SetKeyMap("n", "<leader>vd", ":VtrSendCtrlD<cr>")
		SetKeyMap("n", "<leader>vc", ":VtrSendCtrlC<cr>")
		SetKeyMap("n", "<leader>vf", ":VtrSendFile<cr>")
		SetKeyMap("n", "<leader>vh", ":VtrFlushCommand<cr>")
		SetKeyMap("n", "<leader>vk", ":VtrKillRunner<cr>")
		SetKeyMap("n", "<leader>vo", ":VtrOpenRunner<cr>")
		SetKeyMap("n", "<leader>vr", ":VtrFocusRunner<cr>")
		SetKeyMap("n", "<leader>vv", ":VtrSendLinesToRunner<cr>")
		SetKeyMap("n", "<leader>vv", ":VtrSendLinesToRunner<cr>")
	end,
}
