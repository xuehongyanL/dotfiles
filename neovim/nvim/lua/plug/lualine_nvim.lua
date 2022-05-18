require('lualine').setup {
    options = {
        theme = require('lualine.themes.base16'),
	icons_enabled = false,
        component_separators = { left = '>', right = '<'},
        section_separators = { left = '', right = ''},
	disabled_filetypes = {'NvimTree'}
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename', 'LspStatus()'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
	lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {},
    },
}

