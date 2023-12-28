vim.opt.termguicolors = true

-- Solarized theme
-- vim.opt.background = "light"  -- For light mode
vim.opt.background = "dark" -- For dark mode (default)
vim.cmd("colorscheme solarized")

-- vim-cmp with Solarized Dark colors
vim.cmd([[
  " General completion menu
  highlight Pmenu guifg=#839496 guibg=#002b36 ctermfg=245 ctermbg=0
  highlight PmenuSel guifg=#002b36 guibg=#839496 ctermfg=0 ctermbg=245
  highlight PmenuSbar guibg=#073642 ctermbg=8
  highlight PmenuThumb guibg=#586e75 ctermbg=10

  " vim-cmp specific highlights
  highlight CmpItemAbbr guifg=#839496 guibg=#002b36 ctermfg=245 ctermbg=0
  highlight CmpItemAbbrMatch guifg=#268bd2 guibg=#002b36 ctermfg=33 ctermbg=0
  highlight CmpItemAbbrMatchFuzzy guifg=#268bd2 guibg=#002b36 ctermfg=33 ctermbg=0
  highlight CmpItemKind guifg=#b58900 guibg=#002b36 ctermfg=136 ctermbg=0
  highlight CmpItemMenu guifg=#2aa198 guibg=#002b36 ctermfg=37 ctermbg=0
]])

-- Telescope with Solarized Dark colors
vim.cmd([[
  highlight TelescopeBorder guifg=#ffffff guibg=#ffffff
  highlight TelescopePromptBorder guifg=#073642 guibg=#002b36
  highlight TelescopeResultsBorder guifg=#073642 guibg=#002b36
  highlight TelescopePreviewBorder guifg=#073642 guibg=#002b36

  highlight TelescopeSelection guibg=#073642 guifg=#839496
  highlight TelescopeSelectionCaret guifg=#b58900
  highlight TelescopeMultiSelection guibg=#073642

  highlight TelescopeNormal guifg=#839496 guibg=#002b36
  highlight TelescopePromptNormal guifg=#839496 guibg=#002b36
  highlight TelescopeResultsNormal guifg=#839496 guibg=#002b36
  highlight TelescopePreviewNormal guifg=#839496 guibg=#002b36

  highlight TelescopeMatching guifg=#93a1a1
  
  " Adjusting title, prompt, etc.
  highlight TelescopeTitle guifg=#268bd2 guibg=#002b36
  highlight TelescopePromptPrefix guifg=#cb4b16 guibg=#002b36
  highlight TelescopePromptCounter guifg=#2aa198 guibg=#002b36

  " If Telescope uses standard highlight groups for certain elements, link them to your custom groups
  highlight link TelescopePromptTitle TelescopeTitle
  highlight link TelescopeResultsTitle TelescopeTitle
  highlight link TelescopePreviewTitle TelescopeTitle
]])

-- nvim-lspconfig
vim.cmd([[
  highlight DiagnosticError guifg=#dc322f
  highlight DiagnosticWarn guifg=#b58900
  highlight DiagnosticInfo guifg=#268bd2
  highlight DiagnosticHint guifg=#2aa198
]])

-- unadded line number indicator (~) color
vim.cmd([[
  highlight NonText guifg=#586e75 
  
  highlight LineNr guifg=#586e75 guibg=#002b36
  highlight CursorLineNr guifg=#93a1a1 guibg=#002b36
]])

-- bufferline Solarized scheme
vim.cmd([[
  " Active buffer
  highlight BufferLineBufferSelected guifg=#93a1a1 guibg=#002b36
  
  " Inactive buffer - Using more subtle colors
  highlight BufferLineBuffer guifg=#657b83 guibg=#002b36
  
  " Buffer separators
  highlight BufferLineSeparator guifg=#073642 guibg=#002b36
  
  " Bufferline background - Solarized dark
  highlight BufferLineBackground guifg=#657b83 guibg=#002b36
  
  " Close buttons
  highlight BufferLineCloseButton guifg=#657b83 guibg=#002b36
  highlight BufferLineCloseButtonVisible guifg=#657b83 guibg=#002b36
  highlight BufferLineCloseButtonSelected guifg=#93a1a1 guibg=#002b36
  
  " Modified buffer indicator
  highlight BufferLineModified guifg=#cb4b16 guibg=#002b36
  highlight BufferLineModifiedVisible guifg=#cb4b16 guibg=#002b36
  highlight BufferLineModifiedSelected guifg=#cb4b16 guibg=#002b36
  
  " Tab indicators
  highlight BufferLineTab guifg=#657b83 guibg=#002b36
  highlight BufferLineTabSelected guifg=#93a1a1 guibg=#002b36
  highlight BufferLineTabClose guifg=#dc322f guibg=#002b36
  
  " Numbers and indicators
  highlight BufferLineIndicatorSelected guifg=#2aa198 guibg=#002b36
  highlight BufferLineNumbers guifg=#657b83 guibg=#002b36
  highlight BufferLineNumbersSelected guifg=#93a1a1 guibg=#002b36
]])

-- Gitsigns color configuration for Solarized Dark
vim.cmd([[
  " GitSigns Unchanged
  highlight SignColumn guibg=#002b36

  " GitSigns Add
  highlight GitSignsAdd guifg=#859900 guibg=#002b36

  " GitSigns Change
  highlight GitSignsChange guifg=#b58900 guibg=#002b36

  " GitSigns Delete
  highlight GitSignsDelete guifg=#dc322f guibg=#002b36

  " GitSigns Top Delete (for changed lines at the top of the file)
  highlight GitSignsDeleteTop guifg=#dc322f guibg=#002b36

  " GitSigns Change Delete (for lines that have been changed and deleted)
  highlight GitSignsChangeDelete guifg=#cb4b16 guibg=#002b36
]])
