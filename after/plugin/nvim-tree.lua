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


local api = vim.api

-- Function to check if nvim-tree is open
local function is_nvim_tree_open()
  for _, win in pairs(api.nvim_list_wins()) do
    if vim.bo[api.nvim_win_get_buf(win)].ft == 'NvimTree' then
      return true, win
    end
  end
  return false, nil
end

-- Function to toggle nvim-tree
local function toggle_nvim_tree()
  local is_open, win = is_nvim_tree_open()
  if is_open then
    -- If nvim-tree is open, check if it's focused
    if api.nvim_get_current_win() == win then
      -- If focused, close it
      vim.cmd('NvimTreeClose')
    else
      -- If not focused, focus it
      api.nvim_set_current_win(win)
    end
  else
    -- If nvim-tree is not open, open it
    vim.cmd('NvimTreeOpen')
  end
end

-- Keybinding for <leader>x to toggle nvim-tree based on its state
vim.api.nvim_set_keymap('n', '<leader>x', '', {noremap = true, silent = true, callback = toggle_nvim_tree})
