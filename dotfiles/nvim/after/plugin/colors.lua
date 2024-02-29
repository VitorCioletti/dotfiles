local function set_color_scheme(color)
    color = color or 'catppuccin'
    vim.cmd.colorscheme(color)
end

set_color_scheme()
