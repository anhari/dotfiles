" ankinsho/bufferline.nvim
" https://github.com/ankinsho/bufferline.nvim
" A snazzy 💅 buffer line (with minimal tab integration) for Neovim built using
" lua.


lua << EOF
  require("bufferline").setup{}
EOF

nnoremap <silent>gt :BufferLineCycleNext<CR>
nnoremap <silent>gT :BufferLineCyclePrev<CR>
