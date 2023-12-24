require("mason").setup()

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
--
-- jsonlint          ◍ css-lsp cssls                                                                                                                            eesitter.lua
-- markdownlint      ◍ eslint-lsp eslint
-- prettier          ◍ graphql-language-service-cli graphql
-- rust-analyzer     ◍ json-lsp jsonls                                                                                                                          ua
-- tailwindcss-la    ◍ rust-analyzer rust_analyzer
-- typescript-lan    ◍ tailwindcss-language-server tailwindcss
--                     ◍ typescript-language-server tsserver

local mason_tools = {
    --
    -- LSP's
    --
  
    "css-lsp",
    "eslint-lsp",
    "graphql-language-service-cli",
    "json-lsp",
    -- "rust-analyzer",
    "tailwindcss-language-server",
    "typescript-language-server",
   
    --
    -- Linters
    --

    "commitlint",
    "htmlhint",
    "jsonlint",
    "markdownlint",

    --
    -- Formatters
    --

    "prettier",
    "markdownlint",
}

local function ensure_mason_tools_installed()
    local mason_registry = require("mason-registry")

    for _, tool in ipairs(mason_tools) do
        if not mason_registry.is_installed(tool) then
            vim.cmd("MasonInstall " .. tool)
        end
    end
end

ensure_mason_tools_installed()

-- TODO: do we need this?
require('mason-lspconfig').setup({
  automatic_installation = true,
})
