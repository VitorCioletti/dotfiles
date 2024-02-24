-- leader to space
vim.g.mapleader = ' '

-- linenumber
vim.wo.number = true

-- prevent wrapping
vim.opt.wrap = false

-- color line 120
vim.opt.colorcolumn = '120'

-- line entire line in cursor position
vim.wo.cursorline = true

-- tab to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true

-- disable swap file to use undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

-- new lines inherit indentation of previous ones.
vim.opt.smartindent = true

-- auto indent
vim.opt.autoindent = true

-- file name change terminal name
vim.opt.title = true

-- highlight search
vim.opt.hlsearch = true

-- visible lines below/above cursor
vim.opt.scrolloff = 8

-- milisseconds to save file
vim.opt.updatetime = 50
