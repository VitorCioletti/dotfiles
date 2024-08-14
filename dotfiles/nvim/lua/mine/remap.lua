-- clear highlights
vim.keymap.set('n', '<CR>', ':noh<CR>')

vim.keymap.set('n', '<leader>sf', ':Telescope find_files<CR>')

vim.keymap.set('n', '<leader>ss', ':Telescope live_grep<CR>')

vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal<CR>')
vim.keymap.set('n', '<leader>x', ':Neotree filesystem close<CR>')

vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>')

vim.keymap.set('n', '<leader><leader>', ':so<CR>')

-- lsp
local lsp = require('lsp-zero')
local dap = require('dap')
local telescope_builtin = require('telescope.builtin')

local function on_attach_lsp(_, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>i", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>gn", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<leader>gp", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>.", function() vim.lsp.buf.code_action() end, opts)
    -- TODO: Adicionar um otimizador de usings aqui
    -- TODO: Adicionar um formatador lendo editor config
    vim.keymap.set("n", "<leader>lr", function() telescope_builtin.lsp_references() end, opts)
    vim.keymap.set("n", "<leader>li", function() telescope_builtin.lsp_implementations() end, opts)
    vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, opts)

    vim.keymap.set('n', "<leader>dr", function() dap.run() end)
    vim.keymap.set('n', "<leader>ds", function() dap.stop() end)
    vim.keymap.set('n', "<F5>", function() dap.continue() end)
    vim.keymap.set('n', "<F10>", function() dap.step_over() end)
    vim.keymap.set('n', "<F11>", function() dap.step_into() end)
    vim.keymap.set('n', "<F12>", function() dap.step_out() end)
    vim.keymap.set('n', "<F5>", function() dap.continue() end)
    vim.keymap.set('n', "<leader>b", function() dap.toggle_breakpoint() end)
end

lsp.on_attach(on_attach_lsp)

local harpoon = require('harpoon')

vim.keymap.set('n', '<leader>ha', function() harpoon:list():append() end)

vim.keymap.set('n', '<leader>h1', function() harpoon:list():select(1) end)
vim.keymap.set('n', '<leader>h2', function() harpoon:list():select(2) end)
vim.keymap.set('n', '<leader>h3', function() harpoon:list():select(3) end)

local telescope_config = require("telescope.config").values
local telescope_pickers = require("telescope.pickers")
local telescope_finders = require("telescope.finders")

local function toggle_telescope(harpoon_files)
    local file_paths = {}

    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    telescope_pickers.new({}, {
        prompt_title = "Harpoon",
        finder = telescope_finders.new_table({
            results = file_paths,
        }),
        previewer = false,
        sorter = telescope_config.generic_sorter {},
    }):find()
end

vim.keymap.set("n", "<leader>hm", function() toggle_telescope(harpoon:list()) end)
