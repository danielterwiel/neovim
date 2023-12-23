local lspconfig = require('lspconfig')

-- JavaScript/TypeScript
lspconfig.tsserver.setup {
    on_attach = function(client, bufnr)
        -- Enable formatting
        if client.server_capabilities.documentFormattingProvider then
            vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.formatting()<CR>")
        end
    end,
}

lspconfig.cssls.setup{}     -- CSS/SCSS/LESS
lspconfig.html.setup{}      -- HTML
lspconfig.jsonls.setup{}    -- JSON
-- Add other LSP configurations similarly

-- nvim-cmp setup
local cmp = require('cmp')
cmp.setup({
  -- Your completion configuration
})

