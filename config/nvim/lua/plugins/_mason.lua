require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = {
    "bashls",
    "cssls",
    "elixirls",
    "eslint",
    "html",
    "jsonls",
    "lua_ls",
    "pylsp",
    "rust_analyzer",
    "standardrb",
    "svelte",
    "tailwindcss",
    "tsserver",
    "vimls"
  },
  setup_handlers = {
    function(server_name)
      require("lspconfig")[server_name].setup {}
    end
  }
}
