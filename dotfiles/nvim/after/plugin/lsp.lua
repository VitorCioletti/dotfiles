local mason_lsp_config = require('mason-lspconfig')
local mason = require('mason')
local lsp = require('lsp-zero')
local lsp_config = require('lspconfig')
local cmp = require('cmp')

mason.setup {}

mason_lsp_config.setup {
    ensure_installed = {
        'omnisharp_mono',
        'omnisharp',
        'lua_ls',
    },
    automatic_installation = true,
}

local cmp_action = lsp.cmp_action()

cmp.setup({
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<tab>'] = cmp.mapping.confirm({select = true}),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
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

