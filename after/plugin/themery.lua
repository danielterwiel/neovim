require("themery").setup({
  themes = {"onedark", "ayu"}, -- Your list of installed colorschemes
  themeConfigFile = "~/.config/nvim/lua/settings/theme.lua", -- Described below
  livePreview = true, -- Apply theme while browsing. Default to true.
  themes = {{
    name = "Day",
    colorscheme = "kanagawa-lotus",
  },
  {
    name = "Night",
    colorscheme = "kanagawa-dragon",
  }},
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
