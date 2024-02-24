-- clear highlights
vim.keymap.set('n', '<CR>', ':noh<CR>')

-- telescope
vim.keymap.set('n', '<leader>sf', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>ss', ':Telescope grep_string<CR>')

-- neotree
vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal<CR>')
