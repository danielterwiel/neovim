require("themery").setup({
  themes = {"onedark", "kanagawa"},
  themeConfigFile = "~/.config/nvim/lua/core/theme.lua",
  livePreview = true, 
  themes = {{
    name = "Day",
    colorscheme = "kanagawa-lotus",
  },
  {
    name = "Night",
    colorscheme = "kanagawa-dragon",
  },
  {
    default = true,
    name = "OneDark",
    colorscheme = "onedark",
  }
  },
})

vim.cmd("colorscheme kanagawa")
