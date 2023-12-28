-- Ensure nvim-web-devicons is loaded
require("nvim-web-devicons").setup({
	-- your web-devicons' options here
	default = true,
})

-- Advanced configuration for nvim-tree
require("nvim-tree").setup({
	-- Update the nvim-tree configuration to your liking:
	disable_netrw = true,
	hijack_netrw = true,
	open_on_tab = false,
	hijack_cursor = false,
	update_cwd = true,
	diagnostics = {
		enable = false,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {},
	},
	system_open = {
		cmd = nil,
		args = {},
	},
	filters = {
		dotfiles = false,
		custom = {},
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
	view = {
		width = 30,
		side = "right",
		number = false,
		relativenumber = false,
	},
	trash = {
		cmd = "trash",
		require_confirm = true,
	},
	renderer = {
		indent_markers = {
			enable = true, -- Enable indent markers
		},
		icons = {
			padding = " ", -- Increase padding for icons
			glyphs = {
				folder = {
					arrow_open = "→", -- Add padding to the open arrow
					arrow_closed = "↓", -- Add padding to the closed arrow
				},
			},
		},
	},
})
