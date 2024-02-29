local nvim_treesitter = require('nvim-treesitter.configs')

nvim_treesitter.setup 
{
  ensure_installed = { "c_sharp", "lua", "bash", "vimdoc" },

  sync_install = false,

  auto_install = true,

  ignore_install = { "javascript" },

  indent = {
      enable = true
  },

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
