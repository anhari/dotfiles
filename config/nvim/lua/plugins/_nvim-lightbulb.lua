vim.cmd [[
  autocmd CursorHold,CursorHoldI,CursorMoved * lua require'nvim-lightbulb'.update_lightbulb()
]]
