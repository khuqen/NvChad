-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater
-- This file is for NvChad options & tools, custom settings are split between here and 'lua/custom/init.lua'

local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}

-- NOTE: To use this, make a copy with `cp example_chadrc.lua chadrc.lua`

--------------------------------------------------------------------

-- To use this file, copy the strucutre of `core/default_config.lua`,
-- examples of setting relative number & changing theme:

M.options = {
    cmdheight = 2,
    relativenumber = true,
    tabstop = 4,
    shiftwidth = 4,
}

M.ui = {
    theme = "chadracula"
}

-- NvChad included plugin options & overrides
M.plugins = {
    plugin_status = {
        colorizer = true, -- color RGB, HEX, CSS, NAME color codes
        neoscroll = true, -- smooth scroll
        telescope_media = true, -- media previews within telescope finders
        truezen = true, -- distraction free & minimalist UI mode
    },

    options = {
        lspconfig = {
            setup_lspconf = "custom.plugins.lspconfig"
        },
        treesitter = {
            ensure_installed = {
                "lua",
                "bash",
                "c",
                "cpp",
                "css",
                "go",
                "html",
                "typescript",
                "tsx",
                "javascript",
                "python",
                "json",
                "yaml",
            },
        }
    },
    -- default_plugin_config_replace = {},
}

return M
