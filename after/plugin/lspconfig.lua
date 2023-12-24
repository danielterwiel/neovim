local lspconfig = require('lspconfig')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  -- Mappings.
  local opts = { noremap=true, silent=true }
  
  -- go to definition
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  -- hover error
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
end

lspconfig.tsserver.setup{
  on_attach = on_attach,
  -- Add this to override the default LSP formatting behavior
  handlers = {
    ["textDocument/formatting"] = function() end,
  },
}
lspconfig.cssls.setup{ on_attach = on_attach }
lspconfig.html.setup{ on_attach = on_attach }
lspconfig.jsonls.setup{ on_attach = on_attach }
