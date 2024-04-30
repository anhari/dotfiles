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
    "sqlls",
    "standardrb",
    "svelte",
    "tailwindcss",
    "tsserver",
    "vimls"
  },
}

require("lspconfig").bashls.setup {}
require("lspconfig").cssls.setup {}
require("lspconfig").elixirls.setup {}
require("lspconfig").eslint.setup {}
require("lspconfig").html.setup {}
require("lspconfig").jsonls.setup {}
require("lspconfig").lua_ls.setup {}
require("lspconfig").pylsp.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").sqlls.setup {}
require("lspconfig").standardrb.setup {}
require("lspconfig").svelte.setup {}
require("lspconfig").tailwindcss.setup {}
require("lspconfig").tsserver.setup {}
require("lspconfig").vimls.setup {}
