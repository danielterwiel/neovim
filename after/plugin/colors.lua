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
vim.cmd [[
  highlight DiagnosticError guifg=#dc322f
  highlight DiagnosticWarn guifg=#b58900
  highlight DiagnosticInfo guifg=#268bd2
  highlight DiagnosticHint guifg=#2aa198
]]


vim.cmd([[
  " Grey color from Solarized palette
  highlight NonText guifg=#586e75  ]])
