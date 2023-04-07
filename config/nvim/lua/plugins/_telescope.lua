require("telescope").load_extension "packer"

-- Ctrl-P to find files
SetKeyMap("n", "<C-b>", ":Telescope buffers previewer=false<cr>")
SetKeyMap("n", "<C-p>", ":Telescope find_files previewer=false<cr>")
SetKeyMap("n", "<leader>y", "<cmd>Telescope lsp_document_symbols<cr>")
