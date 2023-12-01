require("trouble").setup {
  auto_open = false,
  auto_close = true
}

SetKeyMap("n", "]t", "<cmd>lua require('trouble').next({skip_groups = true, jump = true})<CR>")
SetKeyMap("n", "[t", "<cmd>lua require('trouble').previous({skip_groups = true, jump = true})<CR>")
