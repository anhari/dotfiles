local tools = {
  "bash-language-server",
  "cspell",
  "css-lsp",
  "elixir-ls",
  "eslint-lsp",
  "html-lsp",
  "json-lsp",
  "lua-language-server",
  "markdownlint",
  "prettier",
  "python-lsp-server",
  "rust-analyzer",
  "standardrb",
  "svelte-language-server",
  "tailwindcss-language-server",
  "typescript-language-server",
  "vim-language-server"
}

require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = tools,
}
require("lspconfig")
require('lsp-setup').setup({
  default_mappings = false,
  mappings = {
    gD = 'lua vim.lsp.buf.declaration()',
    gd = 'lua vim.lsp.buf.definition()',
    -- gt = 'lua vim.lsp.buf.type_definition()',
    gi = 'lua vim.lsp.buf.implementation()',
    gr = 'lua vim.lsp.buf.references()',
    ['<leader>i'] = 'lua vim.lsp.buf.formatting()',
  },
  on_attach = function(client, bufnr)
    require('lsp-setup.utils').format_on_save(client)
  end,
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  servers = {
    bashls = {},
    cssls = {},
    elixirls = {},
    eslint = {},
    html = {},
    jsonls = {},
    lua_ls = {},
    rust_analyzer = {},
    svelte = {},
    tailwindcss = {},
    tsserver = {},
    vimls = {},
  },
})
