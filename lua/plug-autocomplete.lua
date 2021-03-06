  local nvim_lsp = require('lspconfig')
   local on_attach = function(_, bufnr)
     require('diagnostic').on_attach()
     require('completion').on_attach()
--     local opts = { noremap=true, silent=true }
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>xD', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>xr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>xd', '<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>', opts)
--    
--
   end
   local servers = {'jsonls', 'pyls_ms', 'vimls', 'clangd', 'tsserver', 'cssls', 'html','cmake'}
   for _, lsp in ipairs(servers) do
     nvim_lsp[lsp].setup {
       on_attach = on_attach,
     }
   end


-- vim.api.nvim_set_var('completion_chain_complete_list', "{'default': {'comment': [], 'default': [{'complete_items': [ 'lsp', 'snippet','buffers', 'tags','ts','tabnine','tmux' ]}, {'mode': '<c-p>'}, {'mode': '<c-n>'}]}}")

