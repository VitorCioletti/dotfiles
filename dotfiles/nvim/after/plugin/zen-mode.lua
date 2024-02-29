local zen_mode = require('zen-mode')

zen_mode.setup {
    window = {
        width = 130,
        options = {
            cursorline = true,
            number = true,
        },
    },
    plugins = {
        options = {
            enabled = true,
            showcmd = true,
            laststatus = 3,
        },
    },
}

zen_mode.close()
zen_mode.open()
