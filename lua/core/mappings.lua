vim.g.mapleader = " " -- easy to reach leader key
vim.keymap.set("n", "-", vim.cmd.Ex) -- need nvim 0.8+

-- move lines up or down
vim.api.nvim_set_keymap('n', '<C-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':m .-2<CR>==', { noremap = true, silent = true })

-- FIXME: select next occurrence of a selection
-- vim.api.nvim_set_keymap('n', '<C-d>', '*``Nvgn', { noremap = true, silent = true })

