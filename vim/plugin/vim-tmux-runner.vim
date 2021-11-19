" VTR [Vim Tmux Runner]
" Vim and tmux, sittin' in a tree...
" https://github.com/christoomey/vim-tmux-runner

let g:VtrPercentage = 33

nnoremap <leader>xx :wa<cr>:VtrSendCommandToRunner!<cr>
nnoremap <leader>v<space> :VtrClearRunner<cr>
nnoremap <leader>va :VtrAttachToPane<cr>
nnoremap <leader>vx :VtrSendCommandToRunner!<space>
nnoremap <leader>vd :VtrSendCtrlD<cr>
nnoremap <leader>vc :VtrSendCtrlC<cr>
nnoremap <leader>vf :VtrSendFile<cr>
nnoremap <leader>vh :VtrFlushCommand<cr>
nnoremap <leader>vk :VtrKillRunner<cr>
nnoremap <leader>vo :VtrOpenRunner<cr>
nnoremap <leader>vr :VtrFocusRunner<cr>
nnoremap <leader>vv :VtrSendLinesToRunner<cr>
vnoremap <leader>vv :VtrSendLinesToRunner<cr>
