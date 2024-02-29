local dap = require('dap')
local ui_dap = require('dapui')

dap.adapters.coreclr = {
    type = 'executable',
    command = '/usr/local/bin/netcoredbg/netcoredbg',
    args = { '--interpreter=vscode' }
}

dap.configurations.cs = {
    {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function() return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file') end,
    },
}

ui_dap.setup {
    layouts = {
        elements = {
            "breakpoints",
            "stacks",
            "watches",
        },
        size = 30,
        position = "left",
    },
}

dap.listeners.after.event_initialized["dapui_config"] = ui_dap.open
dap.listeners.before.event_terminated["dapui_config"] = ui_dap.close
dap.listeners.before.event_exited["dapui_config"] = ui_dap.close
