local telescope = require('telescope')

telescope.setup {
    defaults = {
        theme = 'dropdown'
    },
    pickers = {
        find_files = {
            previewer = false,
        }
    }
}


