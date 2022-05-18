local util = require('lspconfig/util')

local root_dir_patterns = {
    general = {'.git', '.root_xhy'},
    python = { },
}

function get_root_dir(language)
    return util.root_pattern(
        unpack(root_dir_patterns[language]),
	unpack(root_dir_patterns['general'])
    )
end



require('lspconfig').pyright.setup {
    root_dir = get_root_dir('python'),
    capabilities = vim.g.lsp_capabilities,
    on_attach = lsp_status.on_attach,
}

