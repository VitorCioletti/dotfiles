local telescope = require('telescope')
local telescope_themes = require("telescope.themes")

telescope.setup {
    extensions = {
        ["ui-select"] = { telescope_themes.get_dropdown {} }
    },
    defaults = {
        layout_strategy = 'center',
        layout_config = {
            height = 0.4,
        },
        border = true,
        sorting_strategy = "ascending",
    },
    pickers = {
        find_files = {
            previewer = false,
        },
    }
}

-- sets vim.ui.select to telescope
telescope.load_extension('ui-select')
