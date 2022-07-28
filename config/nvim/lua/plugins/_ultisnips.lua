vim.g.UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
vim.g.UltiSnipsJumpForwardTrigger = "<Plug>(ultisnips_jump_forward)"
vim.g.UltiSnipsJumpBackwardTrigger = "<Plug>(ultisnips_jump_backward)"
vim.g.UltiSnipsListSnippets = "<c-x><c-s>"
vim.g.UltiSnipsRemoveSelectModeMappings = 0
vim.g.UltiSnipsEditSplit = 'tabdo'

vim.api.nvim_set_keymap("n", "<leader>es", ":UltiSnipsEdit<cr>", { noremap = true, silent = true })

vim.cmd [[
  au FileType eruby UltiSnipsAddFiletypes eruby
]]
