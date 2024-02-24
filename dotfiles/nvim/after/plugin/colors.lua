function set_color_scheme(color)
	color = color or 'catppuccin'
	vim.cmd.colorscheme(color)
end

function set_background_transparency()
	vim.api.nvim_set_hl(0, 'Normal', { bg = 'none'})
	vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none'})
end

set_color_scheme()
set_background_transparency()
