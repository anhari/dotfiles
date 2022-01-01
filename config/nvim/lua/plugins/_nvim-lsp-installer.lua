local lsp_installer = require("nvim-lsp-installer")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
local root_pattern = require('lspconfig.util').root_pattern

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances
-- instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    opts.capabilities = cmp_nvim_lsp.update_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    )

    -- Add vim as a global variable
    if server.name == "sumneko_lua" then
      opts.settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
      }
    end

    -- Disable solagraph diagnostics until it works with standardrb
    if server.name == "solargraph" then
      opts.settings = {
        solargraph = {
          diagnostics = false
        }
      }
    end

    -- Enable SQL language server for all directories with db and git
    -- directories
    if server.name == "sqlls" then
      opts.root_dir = root_pattern("db", ".git")
    end

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
