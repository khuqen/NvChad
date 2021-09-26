-- This is where your custom modules and plugins go.
-- See the wiki for a guide on how to extend NvChad

local hooks = require "core.hooks"

hooks.add("install_plugins", function(use)
    use {
        "williamboman/nvim-lsp-installer",
        config = function()
            local lsp_installer = require "nvim-lsp-installer"
            
            lsp_installer.on_server_ready(function(server)
            local opts = {}

            server:setup(opts)
            vim.cmd [[ do User LspAttachBuffers ]]
         end)
      end,
    }
end)


