nnoremap <leader>xb :VtrSendCommandToRunner! mix ecto.rollback<cr>
nnoremap <leader>xc :VtrSendCommandToRunner! iex -S mix<cr>
nnoremap <leader>xd :VtrSendCommandToRunner! mix deps.get<cr>
nnoremap <leader>xg :VtrSendCommandToRunner! mix phx.gen.
nnoremap <leader>xm :VtrSendCommandToRunner! phxmigrate<cr>
nnoremap <leader>xr :VtrSendCommandToRunner! mix phx.routes \| grep<space>
