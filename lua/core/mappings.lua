-- easy to reach leader key
vim.g.mapleader = " "

-- toggle nvim-tree
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- move lines up or down
-- vim.api.nvim_set_keymap("n", "<C-j>", ":m .+1<CR>==", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<C-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- remap ctrl+d to half-page down scroll to alt+d
vim.api.nvim_set_keymap("n", "<C-d>", "<A-S-d>", { noremap = true, silent = true })

-- map ctrl+d to vim-visual-multi to select next occurence of selection

vim.g.VM_maps = {
	["Find Under"] = "<C-d>",
	["Find Subword Under"] = "<C-d>",
	["Select All"] = "<C-S-d>",
	["Normal Yank"] = "y",
	["Normal Paste"] = "P",
}
