require('plug.monokai_nvim')

require('plug.nvim-tree')

vim.g.lsp_capabilities = vim.lsp.protocol.make_client_capabilities()
require('plug.nvim-lsp-installer')
require('plug.nvim-cmp')
require('plug.cmp-nvim-lsp')
require('plug.lsp-status')
require('plug.nvim-lspconfig')

require('plug.nvim-tabline')

require('plug.lualine_nvim')

