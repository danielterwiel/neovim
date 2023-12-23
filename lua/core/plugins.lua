local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  --
  -- Plugins
  --

  -- telescope: File explorer
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- jellybeans: Color scheme
  use({ 'nanotech/jellybeans.vim' })

  -- treesitter: Code syntax highlighter
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})

  -- fugitive: Git
  use 'tpope/vim-fugitive'

  -- nvim-tree: File explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- file icons
    },
  }

  -- Mason for managing LSP servers, linters, etc.
  use 'williamboman/mason.nvim'

  -- LSP configuration
  use 'neovim/nvim-lspconfig'




  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
