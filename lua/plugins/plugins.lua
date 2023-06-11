vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Themes
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "sainnhe/everforest" }

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Lsp
  use { 'neovim/nvim-lspconfig' }

  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate"
  }

  use {
    "williamboman/mason-lspconfig.nvim",
    requires = { {"williamboman/mason.nvim"} }
  }

  use { 'nvim-tree/nvim-web-devicons' }

  use {'romgrk/barbar.nvim', requires = {
    'lewis6991/gitsigns.nvim',
  }}

  use { 'numToStr/Comment.nvim' }

  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp'
  }

	use {
		'jose-elias-alvarez/null-ls.nvim',
		'MunifTanjim/prettier.nvim',
	}

	use { 'nvim-lualine/lualine.nvim' }

  use { 'norcalli/nvim-colorizer.lua' }

end)
