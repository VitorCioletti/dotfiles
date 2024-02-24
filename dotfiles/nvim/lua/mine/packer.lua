local function on_startup(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.5',
	  requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use { 'catppuccin/nvim', as = 'catppuccin' }
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    -- LSP Support
     {'neovim/nvim-lspconfig'},
     {'williamboman/mason-lspconfig.nvim'},
     {'williamboman/mason.nvim'},
     {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim"
        }
  }
end

return require('packer').startup(on_startup)

