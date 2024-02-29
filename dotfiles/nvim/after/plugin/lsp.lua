local mason_lsp_config = require('mason-lspconfig')
local mason = require('mason')
local lsp = require('lsp-zero')
local lsp_config = require('lspconfig')
local cmp = require('cmp')

mason.setup {}

mason_lsp_config.setup {
    ensure_installed = {
        'omnisharp',
        'lua_ls',
    },
    automatic_installation = true,
}

cmp.setup({
   mapping = cmp.mapping.preset.insert({
        ['<tab>'] = cmp.mapping.confirm({select = true}),
    })
})

lsp.setup {}

local lua_opts = lsp.nvim_lua_ls()

lsp_config.lua_ls.setup {
    lua_opts,
    settings = {
        Lua = {
            -- Fix Undefined global 'vim'
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}

lsp_config.omnisharp.setup {}

