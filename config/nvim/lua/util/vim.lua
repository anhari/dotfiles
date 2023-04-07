function SetKeyMap(mode, key, newKey)
  local options = { noremap = true, silent = true }
  vim.api.nvim_set_keymap(mode, key, newKey, options)
end

function SetLoudKeyMap(mode, key, newKey)
  local options = { noremap = true, silent = false }
  vim.api.nvim_set_keymap(mode, key, newKey, options)
end
