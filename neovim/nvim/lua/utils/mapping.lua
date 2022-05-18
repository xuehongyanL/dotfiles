local function map(mode, key, value)
    vim.api.nvim_set_keymap(mode, key, value, {})
end

local function unmap(mode, key)
    map(mode, key, '<Nop>')
end



local function n_unmap(key)
    unmap('n', key)
end

local function n_map(key, value)
    map('n', key, value)
end



local function i_unmap(key)
    unmap('i', key)
end

local function i_map(key, value)
    map('i', key, value)
end



local function v_unmap(key)
    unmap('v', key)
end

local function v_map(key, value)
    map('v', key, value)
end



local function x_unmap(key)
    unmap('x', key)
end

local function x_map(key, value)
    map('x', key, value)
end



local function all_unmap(key)
    n_unmap(key)
    i_unmap(key)
    v_unmap(key)
end

local function all_map(key, value)
    n_map(key, value)
    i_map(key, value)
    v_map(key, value)
end



return {
    map = {
        n = n_map,
	all = all_map,
    },
    unmap = {
        all = all_unmap
    },
}

