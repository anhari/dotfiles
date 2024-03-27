vim.g.UltiSnipsExpandTrigger = "<Tab>"
vim.g.UltiSnipsJumpForwardTrigger = "<Plug>(ultisnips_jump_forward)"
vim.g.UltiSnipsJumpBackwardTrigger = "<Plug>(ultisnips_jump_backward)"
vim.g.UltiSnipsListSnippets = "<c-x><c-s>"
-- vim.g.UltiSnipsRemoveSelectModeMappings = 1
vim.g.UltiSnipsEditSplit = 'tabdo'
vim.g.UltiSnipsSnippetDirectories = { os.getenv('HOME') .. '/.config/nvim/ultisnips' }

SetKeyMap("n", "<leader>es", ":UltiSnipsEdit<cr>")

vim.cmd [[
  au FileType eruby UltiSnipsAddFiletypes eruby
]]
