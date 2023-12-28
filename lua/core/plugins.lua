local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	--
	-- Plugins
	--

	-- vim-colors-solarized: Solarized theme
	use("altercation/vim-colors-solarized")

	-- treesitter: Code syntax highlighter
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- telescope: File explorer
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- lualine: Status line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- bufferline: Tab line
	use({ "akinsho/bufferline.nvim", tag = "*", requires = "nvim-tree/nvim-web-devicons" })

	-- nvim-tree: File explorer
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			-- file icons
			"kyazdani42/nvim-web-devicons",
		},
	})

	-- fugitive: Git commands
	use("tpope/vim-fugitive")

	-- vim-surround: Surround text with quotes, brackets, etc.
	use("tpope/vim-surround")

	-- gitsigns: Git status
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- mason: managing LSP servers, linters, etc.
	use("williamboman/mason.nvim")

	-- lspconfig: LSP configuration
	use("neovim/nvim-lspconfig")

	-- null-ls: LSP integration for prettier
	use("jose-elias-alvarez/null-ls.nvim")

	-- nvm-cmp: Autocomplete
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("hrsh7th/cmp-buffer") -- Buffer completions
	use("hrsh7th/cmp-path") -- Path completions
	use("hrsh7th/cmp-cmdline") -- Command line completions
	use("hrsh7th/cmp-vsnip") -- Snippet completions
	use("hrsh7th/vim-vsnip") -- Snippet engine
	use("onsails/lspkind-nvim") -- Adds vscode-like pictograms to nvim-cmp

	-- copilot: GitHub Copilot
	use("github/copilot.vim")

	-- Comment: easy commenting
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	-- vim-visual-multi: mutli-cursor functionality
	use("mg979/vim-visual-multi")

	-- which-key: vim cheatsheet
	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require("packer").sync()
	end
end)
