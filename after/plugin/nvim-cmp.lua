local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end,
	},
	mapping = require("cmp").mapping.preset.cmdline(),
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = "cmdline" },
		{ name = "nvim_lsp" },
		{ name = "nvim-cmp" },
		{ name = "cmp-nvim-lsp" },
		{ name = "cmp-buffer" },
		{ name = "cmp-path" },
		{ name = "cmp-cmdline" },
		{ name = "cmp-vsnip" },
		{ name = "vim-vsnip" },
		{ name = "onsails/lspkind-nvim" },
	}, {
		{ name = "buffer" },
	}),
	formatting = {
		format = require("lspkind").cmp_format({ with_text = true, maxwidth = 50 }),
	},
	view = {
		entries = { name = "custom", selection_order = "near_cursor" },
	},
	window = {
		-- Add borders to the completion menu
		completion = {
			border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
		},
		documentation = {
			border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
		},
	},
})
