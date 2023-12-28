require("bufferline").setup({
	options = {
		always_show_bufferline = true, -- Ensure bufferline is always displayed
	},
})

-- Close the current buffer
vim.api.nvim_set_keymap('n', '<C-w>', ':bd<CR>', { noremap = true, silent = true })

-- Switch to the left buffer
vim.api.nvim_set_keymap('n', '<C-h>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

-- Switch to the right buffer
vim.api.nvim_set_keymap('n', '<C-l>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
