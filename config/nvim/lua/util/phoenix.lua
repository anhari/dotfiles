-- Leader keys for https://phoenixframework.org

SetKeyMap("n", "<leader>xb", ":VtrSendCommandToRunner! mix ecto.rollback<cr>")
SetKeyMap("n", "<leader>xc", ":VtrSendCommandToRunner! iex -S mix<cr>")
SetKeyMap("n", "<leader>xd", ":VtrSendCommandToRunner! mix deps.get<cr>")
SetLoudKeyMap("n", "<leader>xg", ":VtrSendCommandToRunner! mix phx.gen.<space>")
SetKeyMap("n", "<leader>xm", ":VtrSendCommandToRunner! phxmigrate<cr>")
SetLoudKeyMap("n", "<leader>xr", ":VtrSendCommandToRunner! mix phx.routes | grep <space>")
