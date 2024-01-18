-- easy to reach leader key
vim.g.mapleader = " "

-- toggle nvim-tree
vim.api.nvim_set_keymap("n", "<leader>x", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Move line(s) down in normal and visual mode
vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-j>", ":move '>+1<CR>gv=gv", { noremap = true, silent = true })

-- Move line(s) up in normal and visual mode
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-k>", ":move '<-2<CR>gv=gv", { noremap = true, silent = true })

-- remap ctrl+d to half-page down scroll to alt+d
vim.api.nvim_set_keymap("n", "<C-d>", "<A-S-d>", { noremap = true, silent = true })

-- map ctrl+d to vim-visual-multi to select next occurence of selection
vim.g.VM_maps = {
	["Find Under"] = "<C-d>",
	["Find Subword Under"] = "<C-d>",
	["Select All"] = "<C-S-d>",
	["Normal Yank"] = "y",
	["Normal Paste"] = "P",
	["Add Cursor Down"] = "<C-j>",
	["Add Cursor Up"] = "<C-k>",
}

-- yank error diagnostics
function YankDiagnosticError()
  vim.diagnostic.open_float()
  vim.cmd("normal! j") -- move down one row
  vim.cmd("normal! VG") -- select everything from that row down
  vim.cmd("normal! y") -- yank selected text
  vim.api.nvim_win_close(win_id, true) -- close the floating window by its ID
end

-- map <leader>e to open error diagnostics
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
-- map <leader>ey to copy error diagnostics
vim.api.nvim_set_keymap('n', '<leader>ey', [[:lua YankDiagnosticError()<CR>]], { noremap = true, silent = true, desc = "Copy error" })
