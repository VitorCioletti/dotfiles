local mason_lsp_config = require('mason-lspconfig')
local mason = require('mason')
local lsp = require('lsp-zero')
local lsp_config = require('lspconfig')

mason.setup {}

mason_lsp_config.setup {
	ensure_installed = {
		'omnisharp_mono',
		'omnisharp',
		'lua_ls',
	},
	automatic_installation = true,
}

lsp.preset('recommended')

lsp.setup()

lsp_config.lua_ls.setup {}
lsp_config.omnisharp_mono.setup {}
lsp_config.omnisharp.setup {}

