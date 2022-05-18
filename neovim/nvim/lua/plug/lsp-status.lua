lsp_status = require('lsp-status')

lsp_status.config {
    current_function = true,
    show_filename = true,
    diagnostics = false,
    status_symbol = '',
}

lsp_status.register_progress()

vim.g.lsp_capabilities = vim.tbl_extend('keep', vim.g.lsp_capabilities or {}, lsp_status.capabilities)

function LspStatus()
    if #vim.lsp.buf_get_clients() > 0 then
        lsp_status.update_current_function()
    end
    return lsp_status.status()
end

