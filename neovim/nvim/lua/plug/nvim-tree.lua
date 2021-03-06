vim.g.nvim_show_icons = {
    ['folder_arrows'] = 0,
}
vim.g.nvim_tree_icons = {
    ['default'] = ' ',
    ['symlink'] = '↩',
    ['git'] = {
        ['unstaged'] = 'u',
        ['staged'] = 's',
	['unmerged'] = '&',
        ['renamed'] = '>',
        ['untracked'] = '*',
        ['deleted'] = 'd',
        ['ignored'] = 'i'
    },
    ['folder'] = {
        ['arrow_open'] = '',
        ['arrow_closed'] = '',
        ['default'] = '+',
        ['open'] = '-',
        ['empty'] = 'e',
        ['empty_open'] = 'e',
        ['symlink'] = '+',
	['symlink_open'] = '-',
    }
}

require('nvim-tree').setup {
    auto_reload_on_write = true,
    disable_netrw = false,
    hijack_cursor = false,
    hijack_netrw = true,
    hijack_unnamed_buffer_when_opening = false,
    ignore_buffer_on_setup = false,
    open_on_setup = true,
    open_on_setup_file = true,
    open_on_tab = true,
    sort_by = "name",
    update_cwd = false,
    view = {
        width = 30,
        height = 30,
        hide_root_folder = false,
        side = "left",
        preserve_window_proportions = false,
        number = false,
        relativenumber = false,
        signcolumn = "yes",
        mappings = {
            custom_only = false,
            list = {
                -- user mappings go here
            },
        },
    },
    renderer = {
        indent_markers = {
            enable = false,
            icons = {
                corner = "└ ",
                edge = "│ ",
                none = "  ",
            },
        },
        icons = {
            webdev_colors = false,
            git_placement = "before",
        }
    },
    hijack_directories = {
        enable = true,
        auto_open = true,
    },
    update_focused_file = {
        enable = false,
        update_cwd = false,
        ignore_list = {},
    },
    ignore_ft_on_setup = {},
    system_open = {
        cmd = "",
        args = {},
    },
    diagnostics = {
        enable = false,
        show_on_dirs = false,
        icons = {
            hint = 'h',
            info = 'i',
            warning = 'w',
            error = 'e',
        },
    },
    filters = {
        dotfiles = false,
        custom = {'.DS_Store', '__pycache__', '.git', '.idea'},
        exclude = {},
    },
    git = {
        enable = true,
        ignore = true,
        timeout = 400,
    },
    actions = {
        use_system_clipboard = true,
        change_dir = {
            enable = true,
            global = false,
            restrict_above_cwd = false,
        },
        open_file = {
            quit_on_open = false,
            resize_window = false,
            window_picker = {
                enable = true,
                chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
                exclude = {
                    filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
                    buftype = { "nofile", "terminal", "help" },
                },
            },
        },
    },
    trash = {
        cmd = "trash",
        require_confirm = true,
    },
    log = {
        enable = false,
        truncate = false,
        types = {
            all = false,
            config = false,
            copy_paste = false,
            diagnostics = false,
            git = false,
            profile = false,
        },
    },
}

vim.api.nvim_exec([[autocmd BufEnter * ++nested if winnr('$') == 1 && bufname()[0:8] ==# 'NvimTree_' | quit | endif ]], false)

