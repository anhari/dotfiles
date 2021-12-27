local lsp_installer = require("nvim-lsp-installer")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)


-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances
-- instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {}

    opts.capabilities = cmp_nvim_lsp.update_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    )

    -- (optional) Customize the options passed to the server
    if server.name == "sumneko_lua" then
      opts.settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
      }
    end

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to
    -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
