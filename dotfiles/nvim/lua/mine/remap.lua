-- clear highlights
vim.keymap.set('n', '<CR>', ':noh<CR>')

-- telescope
vim.keymap.set('n', '<leader>sf', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>ss', ':Telescope grep_string<CR>')

-- neotree
vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal<CR>')


-- lsp
local lsp = require('lsp-zero')

local function on_attach_lsp(_, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>i", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>gn", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<leader>gp", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>.", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>lr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, opts)
end

lsp.on_attach(on_attach_lsp)  
