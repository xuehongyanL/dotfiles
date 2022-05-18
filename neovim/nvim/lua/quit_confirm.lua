local Menu = require('nui.menu')
local event = require("nui.utils.autocmd").event



function quit_confirm()
    local bufnr = vim.fn.bufnr('%')
    local modified = vim.fn.getbufvar(bufnr, '&modified')
    if modified ~= 0 then
	local menu = Menu({
            position = '50%',
            size = {
                width = 15,
                height = 3,
            },
            relative = 'editor',
            border = {
                style = 'single',
                text = {
                    top = 'Buffer Unsaved',
                    top_align = 'center',
                },
           },
           win_options = {
               winblend = 10,
               winhighlight = 'Normal:Normal',
           },
        }, {
            lines = {
                Menu.item('Cancel'),
                Menu.item('Save'),
		Menu.item('Delete'),
            },
            max_width = 20,
            keymap = {
                focus_next = {'<Down>', '<Tab>'},
                focus_prev = {'<Up>'},
                close = {'<Esc>'},
                submit = {'<CR>'},
            },
            on_close = function () end,
            on_submit = function (item)
                if item.text == 'Save' then
                    vim.cmd('wq')
		elseif item.text == 'Delete' then
		    vim.cmd('q!')
		end
            end,
        })
        menu:mount()
	menu:on(event.BufLeave, menu.menu_props.on_close, {once = true})
    else
        vim.cmd('quit')
    end
end



vim.cmd('command QuitConfirm :lua quit_confirm()')
vim.cmd('cnoremap <expr> <CR> getcmdtype() == ":" && "q" == getcmdline() ? "<C-u>QuitConfirm<CR>" : "<CR>"')

