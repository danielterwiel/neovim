require("mason").setup()

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
