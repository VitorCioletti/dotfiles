local function on_startup(use)
    use { 'wbthomason/packer.nvim' }

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { 'nvim-telescope/telescope-ui-select.nvim' }

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
        }
    }
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    use { "mfussenegger/nvim-dap" }
    use { "mbbill/undotree" }
    use { "folke/zen-mode.nvim" }
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
