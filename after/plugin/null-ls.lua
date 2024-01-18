local null_ls = require("null-ls")

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	-- Mappings.
	local opts = { noremap = true, silent = true }

	-- Keymap for formatting with Prettier via null-ls
	buf_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)
end

null_ls.setup({
	on_attach = on_attach,
	sources = {
		null_ls.builtins.formatting.prettier.with({
			filetypes = {
				"javascript",
				"typescript",
				"typescriptreact",
				"javascriptreact",
				"css",
				"html",
				"json",
				"yaml",
				"markdown",
			},
		}),

		-- Stylua for Lua files
		-- null_ls.builtins.formatting.stylua.with({
		-- 	filetypes = { "lua" },
		-- 	extra_args = { "--priority=10" }, -- Stylelua still picks up json, despite the filetypes
		-- }),
	},
})
-- format on save
vim.api.nvim_create_augroup("FormatAutogroup", { clear = true })

vim.api.nvim_create_autocmd("BufWritePre", {
	group = "FormatAutogroup",
	pattern = { "*.js", "*.mjs", "*.ts", "*.mts", "*.jsx", "*.tsx", "*.css", "*.html", "*.json", "*.yaml", "*.md", "*.lua" },
	callback = function()
		vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
	end,
})
