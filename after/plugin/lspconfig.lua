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

-- JavaScript and TypeScript
lspconfig.tsserver.setup{}

-- CSS, SCSS
lspconfig.cssls.setup{}

-- HTML
lspconfig.html.setup{}

-- JSON
lspconfig.jsonls.setup{}


local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  -- Mappings.
  local opts = { noremap=true, silent=true }
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  -- Add more keybindings as needed
end

-- Add on_attach to LSP setup
lspconfig.tsserver.setup{ on_attach = on_attach }
lspconfig.cssls.setup{ on_attach = on_attach }
-- TODO: Repeat for other LSPs

