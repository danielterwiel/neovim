local lspconfig = require('lspconfig')

-- Installed through mason:
--
-- commitlint
-- css-lsp
-- eslint-lsp
-- graphql-language-service-cli
-- htmlhint
-- json-lsp
-- jsonlint
-- markdownlint
-- prettier
-- rust-analyzer
-- tailwindcss-language-server
-- typescript-language-server

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  -- Mappings.
  local opts = { noremap=true, silent=true }

  --if client.server_capabilities.documentFormattingProvider then
    -- print('yaaaaay')
    buf_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', opts)
  -- end

  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
end

lspconfig.tsserver.setup{ on_attach = on_attach }
lspconfig.cssls.setup{ on_attach = on_attach }
lspconfig.html.setup{ on_attach = on_attach }
lspconfig.jsonls.setup{ on_attach = on_attach }
